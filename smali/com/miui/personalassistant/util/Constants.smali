.class public interface abstract Lcom/miui/personalassistant/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/util/Constants$CloudSync;,
        Lcom/miui/personalassistant/util/Constants$ContentCatcher;,
        Lcom/miui/personalassistant/util/Constants$Settings;,
        Lcom/miui/personalassistant/util/Constants$XiaomiAccount;,
        Lcom/miui/personalassistant/util/Constants$SmsService;,
        Lcom/miui/personalassistant/util/Constants$Preference;,
        Lcom/miui/personalassistant/util/Constants$Intent;
    }
.end annotation


# static fields
.field public static final ACTION_MINUS_SCREEN_BALL_WORLD_CUP_SHOW:Ljava/lang/String; = "miui.intent.action.MINUS_SCREEN_WORLD_CUP_SHOW"

.field public static final ACTION_MINUS_SCREEN_NOTIFY:Ljava/lang/String; = "miui.intent.action.MINUS_SCREEN_UPDATE"

.field public static final ACTION_MINUS_SCREEN_PLAY_ANIMATION:Ljava/lang/String; = "miui.intent.action.MINUS_SCREEN_PLAY_ANIMATION"

.field public static final ACTION_MINUS_SCREEN_UPDATE_BALL_HIDE:Ljava/lang/String; = "miui.intent.action.MINUS_SCREEN_UPDATE_BALL_HIDE"

.field public static final AUTONAVI_PKGNAME:Ljava/lang/String; = "com.autonavi.minimap"

.field public static final BAIDUMAP_PKGNAME:Ljava/lang/String; = "com.baidu.BaiduMap"

.field public static final CARD_STEPS_MISPORT:Ljava/lang/String; = "com.xiaomi.hm.health"

.field public static final CARD_STEPS_VIP:Ljava/lang/String; = "com.xiaomi.vip"

.field public static final GUIDE_PRIVACY:Ljava/lang/String; = "https://api.assistant.miui.com/guide/privacy"

.field public static final HAS_LIGHT_BGFORCLOCK:Ljava/lang/String; = "hasLightBgForClock"

.field public static final METHOD_EXPRESS_PICKUP_CODE:Ljava/lang/String; = "express_pickup_code"

.field public static final OPTION:Ljava/lang/String; = "option"

.field public static final PERMISSION_LOCATION:Ljava/lang/String; = "permission_location"

.field public static final PKG_NAME:Ljava/lang/String; = "com.miui.personalassistant"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final sUriYellowPageExpress:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://miui.personalassistant.express/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/util/Constants;->sUriYellowPageExpress:Landroid/net/Uri;

    return-void
.end method
