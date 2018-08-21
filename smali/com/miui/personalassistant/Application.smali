.class public Lcom/miui/personalassistant/Application;
.super Lmiui/externalassistant/Application;
.source "Application.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/Application$PersonalAssistantApp;
    }
.end annotation


# static fields
.field public static final KEY_TYPE_LBS_AMAP_COM_NORMAL:Ljava/lang/String; = "lbs.amap.com.normal"

.field public static final KEY_TYPE_LBS_AMAP_COM_SUPER:Ljava/lang/String; = "lbs.amap.com.super"

.field private static final TAG:Ljava/lang/String; = "PersonalAssistantApplication"

.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/externalassistant/Application;-><init>()V

    return-void
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/Application;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/Application;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method protected static init(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/miui/personalassistant/Application;->sContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/externalassistant/Application;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateApplicationDelegate()Lmiui/externalassistant/ApplicationDelegate;
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/Application$PersonalAssistantApp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/Application$PersonalAssistantApp;-><init>(Lcom/miui/personalassistant/Application;Lcom/miui/personalassistant/Application$1;)V

    return-object v0
.end method
