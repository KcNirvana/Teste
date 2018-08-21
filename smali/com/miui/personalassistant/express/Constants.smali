.class public final Lcom/miui/personalassistant/express/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/express/Constants$Setting;,
        Lcom/miui/personalassistant/express/Constants$Data;,
        Lcom/miui/personalassistant/express/Constants$Intent;,
        Lcom/miui/personalassistant/express/Constants$Database;,
        Lcom/miui/personalassistant/express/Constants$Response;,
        Lcom/miui/personalassistant/express/Constants$Interaction;,
        Lcom/miui/personalassistant/express/Constants$Region;,
        Lcom/miui/personalassistant/express/Constants$Cache;,
        Lcom/miui/personalassistant/express/Constants$Request;,
        Lcom/miui/personalassistant/express/Constants$Preference;,
        Lcom/miui/personalassistant/express/Constants$Bundle;
    }
.end annotation


# static fields
.field public static final ACTION_SHOW_CTA_DIALOG:Ljava/lang/String; = "com.miui.personalassistant.action.CTADIALOG"

.field public static final AUTHORITY:Ljava/lang/String; = "miui.personalassistant.express"

.field public static final AUTHORITY_EXPRESS:Ljava/lang/String; = "content://miui.personalassistant.express/"

.field protected static final BASE_URI_STRING:Ljava/lang/String; = "content://miui.yellowpage/"

.field public static final DIRECTORY_IMAGE_PNG:Ljava/lang/String; = "/thumbnail/png/w%d/"

.field public static final LOADED_QUERY_HISTORY:I = 0x1

.field public static final LOADER_COMPANY_INFO:I = 0x0

.field public static final MIUI_VERSION_V9:Ljava/lang/String; = "V9"

.field public static final REQUEST_COMPANY_LIST:I = 0x6

.field public static final REQUEST_EXPRESS_PROGRESS:I = 0x1

.field public static final REQUEST_ORDER_REMARK:I = 0x3

.field public static final REQUEST_PICK_EXPRESS:I = 0x4

.field public static final SOURCE_AUTHORITY:Ljava/lang/String; = "miui.yellowpage"

.field public static final SOURCE_INVOCATION:Ljava/lang/String; = "content://miui.yellowpage.invocation/"

.field public static final URL_DEFAULT_IMAGE_BASE:Ljava/lang/String; = "http://file.market.xiaomi.com"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
