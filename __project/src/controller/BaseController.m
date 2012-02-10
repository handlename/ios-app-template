#import "BaseController.h"

@implementation BaseController

-(void)initialize {
    self.view.backgroundColor = UICOLOR_BASE_BACKGROUND;
}

-(id)initWithNibName:(NSString*)nibName bundle:(NSBundle*)nibBundle {
    self = [super initWithNibName:nibName bundle:nibBundle];
    if (self) {
        [self initialize];
    }
    return self;
}

-(void)awakeFromNib {
    [super awakeFromNib];
    [self initialize];
}


-(void)releaseIBOutlets {}

-(void)dealloc {
    [self releaseIBOutlets];
    [super dealloc];
}

-(void)viewDidUnload {
    [self releaseIBOutlets];
    [super viewDidUnload];
}

@end
