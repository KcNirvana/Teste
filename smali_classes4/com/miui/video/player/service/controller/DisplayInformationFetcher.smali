.class public Lcom/miui/video/player/service/controller/DisplayInformationFetcher;
.super Ljava/lang/Object;
.source "DisplayInformationFetcher.java"


# static fields
.field public static final SCREEN_LAND:I = 0x0

.field public static final SCREEN_PORT:I = 0x1

.field private static sInstance:Lcom/miui/video/player/service/controller/DisplayInformationFetcher;


# instance fields
.field private mDefaultDisplay:Landroid/view/Display;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/controller/DisplayInformationFetcher;->mDefaultDisplay:Landroid/view/Display;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/video/player/service/controller/DisplayInformationFetcher;
    .locals 1

    sget-object v0, Lcom/miui/video/player/service/controller/DisplayInformationFetcher;->sInstance:Lcom/miui/video/player/service/controller/DisplayInformationFetcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/player/service/controller/DisplayInformationFetcher;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/controller/DisplayInformationFetcher;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/video/player/service/controller/DisplayInformationFetcher;->sInstance:Lcom/miui/video/player/service/controller/DisplayInformationFetcher;

    :cond_0
    sget-object p0, Lcom/miui/video/player/service/controller/DisplayInformationFetcher;->sInstance:Lcom/miui/video/player/service/controller/DisplayInformationFetcher;

    return-object p0
.end method


# virtual methods
.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/miui/video/player/service/controller/DisplayInformationFetcher;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/miui/video/player/service/controller/DisplayInformationFetcher;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getScreenOrientation()I
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/controller/DisplayInformationFetcher;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public getScreenWidth()I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/miui/video/player/service/controller/DisplayInformationFetcher;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method
