.class public Lcom/miui/home/launcher/assistant/provider/database/AppIndex;
.super Ljava/lang/Object;
.source "AppIndex.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "miui_personalassistant_v2"

.field public static final AUTHORITY_OLD:Ljava/lang/String; = "miui_personalassistant"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_TABLE:Ljava/lang/String; = "data"

.field public static final DATA_TABLE_INDEX:Ljava/lang/String; = "data_idx"

.field public static final MIUI_HOME:Ljava/lang/String; = "com.miui.home"

.field public static final PACKAGE:Ljava/lang/String; = "package"

.field public static final PACKAGE_DIDI_TRIP:Ljava/lang/String; = "com.didi.trip"

.field public static final PACKAGE_DUOKAN:Ljava/lang/String; = "com.duokan.reader"

.field public static final PACKAGE_FAVORITE:Ljava/lang/String; = "com.miui.personalassistant.favorite"

.field public static final PACKAGE_FLOW:Ljava/lang/String; = "com.miui.securitycenter"

.field public static final PACKAGE_MI_SPORT:Ljava/lang/String; = "com.xiaomi.hm.health"

.field public static final PERSIONAL_ASSIST:Ljava/lang/String; = "com.miui.personalassistant"

.field public static final SCHEME:Ljava/lang/String; = "content"

.field public static final SETTING_ORDER_PACKAGENAME:Ljava/lang/String; = "com.miui.personalassistant.SETTINGS_ORDER"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://miui_personalassistant_v2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/assistant/provider/database/AppIndex;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
