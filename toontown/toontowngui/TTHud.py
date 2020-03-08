from direct.task.TaskManagerGlobal import taskMgr
from pandac.PandaModules import *
import random

class TTHud(TextNode):
    TEXT_COLORS = [(1, 0.5, 0, 1),# Orange
                   (1, 0, 0, 1), # Red
                   (0, .8, .4, 1), # Green
                   (0, 0, 1, 1)] # Blue
    DELAY_TIME = 1.5

    def __init__(self, name='fpsMeter'):
        TextNode.__init__(self, name)
        self.lastFrameRate = None
        self.setText("0.0 FPS")
        self.setTextColor(random.choice(self.TEXT_COLORS))
        self.setCardColor(1, 1, 1, .6)
        self.setCardAsMargin(0.5, 0.5, 0.5, 0.5)
        self.setAlign(TextNode.ARight)
        self.setFont(ToontownGlobals.getSignFont())
        self.fpsMeter = base.a2dTopRight.attachNewNode(self)
        self.fpsMeter.setBin("gui-popup", 10000)
        self.fpsMeter.setScale(0.05)
        self.fpsMeter.setPos(-0.125, 0, -0.115)
        taskMgr.doMethodLater(self.DELAY_TIME, self.update, 'update-frame-rate')

    def update(self, task=None):
        averageFrameRate = round(globalClock.getAverageFrameRate(), 1)
        if not self.lastFrameRate == averageFrameRate:
            self.lastFrameRate = averageFrameRate
            self.setTextColor(random.choice(self.TEXT_COLORS))
            self.setText("{0} FPS".format(self.lastFrameRate))
        task.delayTime = self.DELAY_TIME
        return task.again

    def destroy(self):
        taskMgr.remove('update-frame-rate')
        self.fpsMeter.removeNode()
        del self.fpsMeter
