#import "HockeyAppUtils.h"

@implementation HockeyAppUtils

+ (BITAuthenticatorIdentificationType)identificationTypeForString:(NSString *)typeString{
  
  if ([typeString isEqualToString:@"BITAuthenticatorIdentificationTypeDevice"]){
    
    return BITAuthenticatorIdentificationTypeDevice;
  }else if ([typeString isEqualToString:@"BITAuthenticatorIdentificationTypeHockeyAppUser"]){
    
    return BITAuthenticatorIdentificationTypeHockeyAppUser;
  }else if ([typeString isEqualToString:@"BITAuthenticatorIdentificationTypeHockeyAppEmail"]){
    
    return BITAuthenticatorIdentificationTypeHockeyAppEmail;
  }else if ([typeString isEqualToString:@"BITAuthenticatorIdentificationTypeWebAuth"]){
    
    return BITAuthenticatorIdentificationTypeWebAuth;
  }else{
    
    return BITAuthenticatorIdentificationTypeAnonymous;
  }
}

+ (BITCrashManagerStatus)statusForAutoSendEnabled:(BOOL)autoSendEnabled{
  
  if (autoSendEnabled){
    return BITCrashManagerStatusAutoSend;
  }
  
  return BITCrashManagerStatusAlwaysAsk;
}

@end
