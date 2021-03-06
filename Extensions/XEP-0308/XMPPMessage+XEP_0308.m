#import "XMPPMessage+XEP_0308.h"
#import "NSXMLElement+XMPP.h"

#define XMLNS_XMPP_MESSAGE_CORRECT @"urn:xmpp:message-correct:0"

@implementation XMPPMessage (XEP_0308)

- (BOOL)isCorrectionMessage
{    
    if([[self correctedMessageID] length])
    {
        return YES;
    }else{
        return NO;
    }
}

- (NSString *)correctedMessageID
{
    return [[self elementForName:@"replace" xmlns:XMLNS_XMPP_MESSAGE_CORRECT] attributeStringValueForName:@"id"];
}

@end
