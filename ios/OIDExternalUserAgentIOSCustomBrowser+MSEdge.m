

#import "OIDExternalUserAgentIOSCustomBrowser+MSEdge.h"

@implementation OIDExternalUserAgentIOSCustomBrowser (MSEdge)

+ (instancetype)CustomBrowserEdge {
  OIDCustomBrowserURLTransformation transform =
      [[self class] URLTransformationSchemeSubstitutionHTTPS:@"microsoft-edge-https" HTTP:@"microsoft-edge-http"];
  NSURL *appStoreURL =
  [NSURL URLWithString:@"itms-apps://itunes.apple.com/us/app/microsoft-edge-web-browser/id1288723196"];
  return [[[self class] alloc] initWithURLTransformation:transform
                                        canOpenURLScheme:@"microsoft-edge"
                                             appStoreURL:appStoreURL];
}

@end
