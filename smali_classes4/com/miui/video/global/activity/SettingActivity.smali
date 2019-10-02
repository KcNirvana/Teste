.class public final Lcom/miui/video/global/activity/SettingActivity;
.super Lcom/miui/video/global/activity/BasePreferenceActivity;
.source "SettingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/global/activity/SettingActivity$AsyncClearCacheTask;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingActivity.kt\ncom/miui/video/global/activity/SettingActivity\n*L\n1#1,294:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0017\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0016\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001XB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010O\u001a\u00020PH\u0002J\u0008\u0010Q\u001a\u00020PH\u0002J\u0008\u0010R\u001a\u00020PH\u0002J\u0012\u0010S\u001a\u00020P2\u0008\u0010T\u001a\u0004\u0018\u00010UH\u0014J\u0008\u0010V\u001a\u00020PH\u0016J\u0008\u0010W\u001a\u00020PH\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0014\u0010\u0011\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006R\u0014\u0010\u0013\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006R\u0014\u0010\u0015\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006R\u0014\u0010\u0017\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0006R\u0014\u0010\u0019\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0006R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0006R\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010+\u001a\u00020,X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001c\u00101\u001a\u0004\u0018\u00010&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010(\"\u0004\u00083\u0010*R\u001c\u00104\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\"\"\u0004\u00086\u0010$R\u001c\u00107\u001a\u0004\u0018\u00010&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010(\"\u0004\u00089\u0010*R\u001c\u0010:\u001a\u0004\u0018\u00010;X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u001c\u0010@\u001a\u0004\u0018\u00010;X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010=\"\u0004\u0008B\u0010?R\u001c\u0010C\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010\"\"\u0004\u0008E\u0010$R\u001c\u0010F\u001a\u0004\u0018\u00010;X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010=\"\u0004\u0008H\u0010?R\u001c\u0010I\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010\"\"\u0004\u0008K\u0010$R\u001c\u0010L\u001a\u0004\u0018\u00010&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010(\"\u0004\u0008N\u0010*\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/miui/video/global/activity/SettingActivity;",
        "Lcom/miui/video/global/activity/BasePreferenceActivity;",
        "()V",
        "CATEGORY_CACHE",
        "",
        "getCATEGORY_CACHE",
        "()Ljava/lang/String;",
        "CATEGORY_PRIVACY",
        "getCATEGORY_PRIVACY",
        "CATEGORY_RECOMMEND",
        "getCATEGORY_RECOMMEND",
        "CATEGORY_VERSION",
        "getCATEGORY_VERSION",
        "KEY_CLEAR_CACHE",
        "getKEY_CLEAR_CACHE",
        "KEY_LOGOUT",
        "getKEY_LOGOUT",
        "KEY_PRIVACY_POLICY",
        "getKEY_PRIVACY_POLICY",
        "KEY_PRIVACY_SWITCH",
        "getKEY_PRIVACY_SWITCH",
        "KEY_PUSH_MESSAGE",
        "getKEY_PUSH_MESSAGE",
        "KEY_RECOMMEND_VIDEO",
        "getKEY_RECOMMEND_VIDEO",
        "KEY_VERSION_INFO",
        "getKEY_VERSION_INFO",
        "REQUEST_PRIVACY_CODE",
        "",
        "SETTING_KEY_PRIVACY_POLICY_URL",
        "getSETTING_KEY_PRIVACY_POLICY_URL",
        "mCacheCategory",
        "Landroid/preference/PreferenceCategory;",
        "getMCacheCategory",
        "()Landroid/preference/PreferenceCategory;",
        "setMCacheCategory",
        "(Landroid/preference/PreferenceCategory;)V",
        "mClearCache",
        "Landroid/preference/Preference;",
        "getMClearCache",
        "()Landroid/preference/Preference;",
        "setMClearCache",
        "(Landroid/preference/Preference;)V",
        "mHits",
        "",
        "getMHits",
        "()[J",
        "setMHits",
        "([J)V",
        "mLogoutPreference",
        "getMLogoutPreference",
        "setMLogoutPreference",
        "mPrivacyCategory",
        "getMPrivacyCategory",
        "setMPrivacyCategory",
        "mPrivacyPolicy",
        "getMPrivacyPolicy",
        "setMPrivacyPolicy",
        "mPrivacySwitch",
        "Landroid/preference/CheckBoxPreference;",
        "getMPrivacySwitch",
        "()Landroid/preference/CheckBoxPreference;",
        "setMPrivacySwitch",
        "(Landroid/preference/CheckBoxPreference;)V",
        "mPushMessageSwitch",
        "getMPushMessageSwitch",
        "setMPushMessageSwitch",
        "mRecommendCategory",
        "getMRecommendCategory",
        "setMRecommendCategory",
        "mRecommendVideoSwitch",
        "getMRecommendVideoSwitch",
        "setMRecommendVideoSwitch",
        "mVersionCategory",
        "getMVersionCategory",
        "setMVersionCategory",
        "mVersionInfo",
        "getMVersionInfo",
        "setMVersionInfo",
        "addPreference",
        "",
        "clearCache",
        "hideOnlinePreference",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "showOnlinePreference",
        "AsyncClearCacheTask",
        "globalvideo_gpRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final CATEGORY_CACHE:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final CATEGORY_PRIVACY:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final CATEGORY_RECOMMEND:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final CATEGORY_VERSION:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final KEY_CLEAR_CACHE:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final KEY_LOGOUT:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final KEY_PRIVACY_POLICY:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final KEY_PRIVACY_SWITCH:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final KEY_PUSH_MESSAGE:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final KEY_RECOMMEND_VIDEO:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final KEY_VERSION_INFO:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final REQUEST_PRIVACY_CODE:I

.field private final SETTING_KEY_PRIVACY_POLICY_URL:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private _$_findViewCache:Ljava/util/HashMap;

.field private mCacheCategory:Landroid/preference/PreferenceCategory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mClearCache:Landroid/preference/Preference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mHits:[J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mLogoutPreference:Landroid/preference/Preference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPrivacyCategory:Landroid/preference/PreferenceCategory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPrivacyPolicy:Landroid/preference/Preference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPrivacySwitch:Landroid/preference/CheckBoxPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPushMessageSwitch:Landroid/preference/CheckBoxPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mRecommendCategory:Landroid/preference/PreferenceCategory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mRecommendVideoSwitch:Landroid/preference/CheckBoxPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mVersionCategory:Landroid/preference/PreferenceCategory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mVersionInfo:Landroid/preference/Preference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/global/activity/BasePreferenceActivity;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/miui/video/global/activity/SettingActivity;->REQUEST_PRIVACY_CODE:I

    const-string v0, "clear_cache_category_key"

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->CATEGORY_CACHE:Ljava/lang/String;

    const-string v0, "privacy_policy_category_key"

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->CATEGORY_PRIVACY:Ljava/lang/String;

    const-string v0, "recommend_online_category_key"

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->CATEGORY_RECOMMEND:Ljava/lang/String;

    const-string v0, "version_info_category_key"

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->CATEGORY_VERSION:Ljava/lang/String;

    const-string v0, "privacy_policy_url"

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->SETTING_KEY_PRIVACY_POLICY_URL:Ljava/lang/String;

    const-string v0, "version_info_key"

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_VERSION_INFO:Ljava/lang/String;

    const-string v0, "clear_cache_key"

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_CLEAR_CACHE:Ljava/lang/String;

    const-string v0, "privacy_policy_key"

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_PRIVACY_POLICY:Ljava/lang/String;

    const-string v0, "privacy_switch_key"

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_PRIVACY_SWITCH:Ljava/lang/String;

    const-string v0, "recommend_online_switch_key"

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_RECOMMEND_VIDEO:Ljava/lang/String;

    const-string v0, "push_message_switch_key"

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_PUSH_MESSAGE:Ljava/lang/String;

    const-string v0, "key_logout"

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_LOGOUT:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mHits:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static final synthetic access$clearCache(Lcom/miui/video/global/activity/SettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/global/activity/SettingActivity;->clearCache()V

    return-void
.end method

.method public static final synthetic access$getREQUEST_PRIVACY_CODE$p(Lcom/miui/video/global/activity/SettingActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/global/activity/SettingActivity;->REQUEST_PRIVACY_CODE:I

    return p0
.end method

.method public static final synthetic access$hideOnlinePreference(Lcom/miui/video/global/activity/SettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/global/activity/SettingActivity;->hideOnlinePreference()V

    return-void
.end method

.method public static final synthetic access$showOnlinePreference(Lcom/miui/video/global/activity/SettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/global/activity/SettingActivity;->showOnlinePreference()V

    return-void
.end method

.method private final addPreference()V
    .locals 3

    const v0, 0x7f130005

    invoke-virtual {p0, v0}, Lcom/miui/video/global/activity/SettingActivity;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->CATEGORY_CACHE:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/miui/video/global/activity/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_13

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mCacheCategory:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->CATEGORY_PRIVACY:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/miui/video/global/activity/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_12

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mPrivacyCategory:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->CATEGORY_RECOMMEND:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/miui/video/global/activity/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_11

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mRecommendCategory:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->CATEGORY_VERSION:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/miui/video/global/activity/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_10

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mVersionCategory:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_CLEAR_CACHE:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/miui/video/global/activity/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_f

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mClearCache:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_PRIVACY_POLICY:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/miui/video/global/activity/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_e

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mPrivacyPolicy:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_PRIVACY_SWITCH:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/miui/video/global/activity/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mPrivacySwitch:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_VERSION_INFO:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/miui/video/global/activity/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_c

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mVersionInfo:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mVersionInfo:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/video/base/common/internal/AppConfig;->VersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/miui/video/base/common/internal/AppConfig;->VersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mVersionInfo:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/miui/video/global/activity/SettingActivity$addPreference$1;

    invoke-direct {v1, p0}, Lcom/miui/video/global/activity/SettingActivity$addPreference$1;-><init>(Lcom/miui/video/global/activity/SettingActivity;)V

    check-cast v1, Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_RECOMMEND_VIDEO:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/miui/video/global/activity/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mRecommendVideoSwitch:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_LOGOUT:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/miui/video/global/activity/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mLogoutPreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mLogoutPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->isMIUI()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    const-string v1, "VideoMiAccountManager.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/global/activity/SettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/global/activity/SettingActivity;->mLogoutPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mLogoutPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lcom/miui/video/global/activity/SettingActivity$addPreference$$inlined$let$lambda$1;-><init>(Lcom/miui/video/global/activity/SettingActivity;)V

    check-cast v1, Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mPrivacySwitch:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    new-instance v1, Lcom/miui/video/global/activity/SettingActivity$addPreference$3;

    invoke-direct {v1, p0}, Lcom/miui/video/global/activity/SettingActivity$addPreference$3;-><init>(Lcom/miui/video/global/activity/SettingActivity;)V

    check-cast v1, Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mRecommendVideoSwitch:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    new-instance v1, Lcom/miui/video/global/activity/SettingActivity$addPreference$4;

    invoke-direct {v1, p0}, Lcom/miui/video/global/activity/SettingActivity$addPreference$4;-><init>(Lcom/miui/video/global/activity/SettingActivity;)V

    check-cast v1, Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_PUSH_MESSAGE:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/miui/video/global/activity/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_a

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mPushMessageSwitch:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mPushMessageSwitch:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    new-instance v1, Lcom/miui/video/global/activity/SettingActivity$addPreference$5;

    invoke-direct {v1, p0}, Lcom/miui/video/global/activity/SettingActivity$addPreference$5;-><init>(Lcom/miui/video/global/activity/SettingActivity;)V

    check-cast v1, Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mClearCache:Landroid/preference/Preference;

    if-nez v0, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    new-instance v1, Lcom/miui/video/global/activity/SettingActivity$addPreference$6;

    invoke-direct {v1, p0}, Lcom/miui/video/global/activity/SettingActivity$addPreference$6;-><init>(Lcom/miui/video/global/activity/SettingActivity;)V

    check-cast v1, Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mPrivacyPolicy:Landroid/preference/Preference;

    if-nez v0, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    new-instance v1, Lcom/miui/video/global/activity/SettingActivity$addPreference$7;

    invoke-direct {v1, p0}, Lcom/miui/video/global/activity/SettingActivity$addPreference$7;-><init>(Lcom/miui/video/global/activity/SettingActivity;)V

    check-cast v1, Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void

    :cond_a
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.preference.CheckBoxPreference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.preference.CheckBoxPreference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.preference.Preference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.preference.CheckBoxPreference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.preference.Preference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.preference.Preference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.preference.PreferenceCategory"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.preference.PreferenceCategory"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.preference.PreferenceCategory"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.preference.PreferenceCategory"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final clearCache()V
    .locals 2

    new-instance v0, Lcom/miui/video/global/activity/SettingActivity$AsyncClearCacheTask;

    invoke-direct {v0}, Lcom/miui/video/global/activity/SettingActivity$AsyncClearCacheTask;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/video/global/activity/SettingActivity$AsyncClearCacheTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private final hideOnlinePreference()V
    .locals 3

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->isOnlineVersion()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/global/activity/SettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/global/activity/SettingActivity;->mRecommendCategory:Landroid/preference/PreferenceCategory;

    check-cast v2, Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    invoke-static {}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->isMIUI()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/video/global/activity/SettingActivity;->mPrivacyCategory:Landroid/preference/PreferenceCategory;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v2, p0, Lcom/miui/video/global/activity/SettingActivity;->mPrivacySwitch:Landroid/preference/CheckBoxPreference;

    check-cast v2, Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/miui/video/global/activity/SettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/AppUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v1, "AppUtils.getPackageInfo(\u2026.packageName).versionName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "GP"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mVersionInfo:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/miui/video/global/activity/SettingActivity$hideOnlinePreference$1;->INSTANCE:Lcom/miui/video/global/activity/SettingActivity$hideOnlinePreference$1;

    check-cast v1, Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    return-void
.end method

.method private final showOnlinePreference()V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->isOnlineVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/global/activity/SettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/global/activity/SettingActivity;->mRecommendCategory:Landroid/preference/PreferenceCategory;

    check-cast v1, Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/global/activity/SettingActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getCATEGORY_CACHE()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->CATEGORY_CACHE:Ljava/lang/String;

    return-object v0
.end method

.method public final getCATEGORY_PRIVACY()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->CATEGORY_PRIVACY:Ljava/lang/String;

    return-object v0
.end method

.method public final getCATEGORY_RECOMMEND()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->CATEGORY_RECOMMEND:Ljava/lang/String;

    return-object v0
.end method

.method public final getCATEGORY_VERSION()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->CATEGORY_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public final getKEY_CLEAR_CACHE()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_CLEAR_CACHE:Ljava/lang/String;

    return-object v0
.end method

.method public final getKEY_LOGOUT()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_LOGOUT:Ljava/lang/String;

    return-object v0
.end method

.method public final getKEY_PRIVACY_POLICY()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_PRIVACY_POLICY:Ljava/lang/String;

    return-object v0
.end method

.method public final getKEY_PRIVACY_SWITCH()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_PRIVACY_SWITCH:Ljava/lang/String;

    return-object v0
.end method

.method public final getKEY_PUSH_MESSAGE()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_PUSH_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method public final getKEY_RECOMMEND_VIDEO()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_RECOMMEND_VIDEO:Ljava/lang/String;

    return-object v0
.end method

.method public final getKEY_VERSION_INFO()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->KEY_VERSION_INFO:Ljava/lang/String;

    return-object v0
.end method

.method public final getMCacheCategory()Landroid/preference/PreferenceCategory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mCacheCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method public final getMClearCache()Landroid/preference/Preference;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mClearCache:Landroid/preference/Preference;

    return-object v0
.end method

.method public final getMHits()[J
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mHits:[J

    return-object v0
.end method

.method public final getMLogoutPreference()Landroid/preference/Preference;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mLogoutPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method public final getMPrivacyCategory()Landroid/preference/PreferenceCategory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mPrivacyCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method public final getMPrivacyPolicy()Landroid/preference/Preference;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mPrivacyPolicy:Landroid/preference/Preference;

    return-object v0
.end method

.method public final getMPrivacySwitch()Landroid/preference/CheckBoxPreference;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mPrivacySwitch:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method public final getMPushMessageSwitch()Landroid/preference/CheckBoxPreference;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mPushMessageSwitch:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method public final getMRecommendCategory()Landroid/preference/PreferenceCategory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mRecommendCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method public final getMRecommendVideoSwitch()Landroid/preference/CheckBoxPreference;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mRecommendVideoSwitch:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method public final getMVersionCategory()Landroid/preference/PreferenceCategory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mVersionCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method public final getMVersionInfo()Landroid/preference/Preference;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->mVersionInfo:Landroid/preference/Preference;

    return-object v0
.end method

.method public final getSETTING_KEY_PRIVACY_POLICY_URL()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/global/activity/SettingActivity;->SETTING_KEY_PRIVACY_POLICY_URL:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/global/activity/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/video/global/activity/SettingActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "getPreferenceManager()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video_settings"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    invoke-direct {p0}, Lcom/miui/video/global/activity/SettingActivity;->addPreference()V

    invoke-direct {p0}, Lcom/miui/video/global/activity/SettingActivity;->hideOnlinePreference()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/global/activity/BasePreferenceActivity;->onDestroy()V

    return-void
.end method

.method public final setMCacheCategory(Landroid/preference/PreferenceCategory;)V
    .locals 0
    .param p1    # Landroid/preference/PreferenceCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity;->mCacheCategory:Landroid/preference/PreferenceCategory;

    return-void
.end method

.method public final setMClearCache(Landroid/preference/Preference;)V
    .locals 0
    .param p1    # Landroid/preference/Preference;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity;->mClearCache:Landroid/preference/Preference;

    return-void
.end method

.method public final setMHits([J)V
    .locals 1
    .param p1    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity;->mHits:[J

    return-void
.end method

.method public final setMLogoutPreference(Landroid/preference/Preference;)V
    .locals 0
    .param p1    # Landroid/preference/Preference;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity;->mLogoutPreference:Landroid/preference/Preference;

    return-void
.end method

.method public final setMPrivacyCategory(Landroid/preference/PreferenceCategory;)V
    .locals 0
    .param p1    # Landroid/preference/PreferenceCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity;->mPrivacyCategory:Landroid/preference/PreferenceCategory;

    return-void
.end method

.method public final setMPrivacyPolicy(Landroid/preference/Preference;)V
    .locals 0
    .param p1    # Landroid/preference/Preference;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity;->mPrivacyPolicy:Landroid/preference/Preference;

    return-void
.end method

.method public final setMPrivacySwitch(Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .param p1    # Landroid/preference/CheckBoxPreference;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity;->mPrivacySwitch:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method public final setMPushMessageSwitch(Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .param p1    # Landroid/preference/CheckBoxPreference;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity;->mPushMessageSwitch:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method public final setMRecommendCategory(Landroid/preference/PreferenceCategory;)V
    .locals 0
    .param p1    # Landroid/preference/PreferenceCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity;->mRecommendCategory:Landroid/preference/PreferenceCategory;

    return-void
.end method

.method public final setMRecommendVideoSwitch(Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .param p1    # Landroid/preference/CheckBoxPreference;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity;->mRecommendVideoSwitch:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method public final setMVersionCategory(Landroid/preference/PreferenceCategory;)V
    .locals 0
    .param p1    # Landroid/preference/PreferenceCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity;->mVersionCategory:Landroid/preference/PreferenceCategory;

    return-void
.end method

.method public final setMVersionInfo(Landroid/preference/Preference;)V
    .locals 0
    .param p1    # Landroid/preference/Preference;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/global/activity/SettingActivity;->mVersionInfo:Landroid/preference/Preference;

    return-void
.end method
