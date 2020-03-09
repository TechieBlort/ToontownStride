from panda3d.core import TextNode
from toontown.toonbase import ToontownGlobals
import random

class TTCopyright(TextNode):
    TEXT_COLORS = [(0, 0, 1, 1)] # Blue
    DELAY_TIME = 100

    def __init__(self, name='copyright'):
        pass
        #TextNode.__init__(self, name)
        #self.lastFrameRate = None
        #self.setText("Stride")
        #self.setTextColor(random.choice(self.TEXT_COLORS))
        #self.setCardColor(0, 0, 0, 0)
        #self.setCardAsMargin(0.5, 0.5, 0.5, 0.5)
        #self.setAlign(TextNode.ABoxedCenter)
        #self.setFont(ToontownGlobals.getSignFont())
        #self.copyright = base.a2dTopCenter.attachNewNode(self)
        #self.copyright.setBin("gui-popup", 10000)
        #self.copyright.setScale(0.08)          
        #self.copyright.setPos(-0, 0, -0.100)

    def destroy(self):
        pass
        #self.copyright.removeNode()
        #del self.copyright