.class public final Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;
.super Ljava/lang/Object;
.source "LoadConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

.field private b:Z

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;)Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;->c:I

    return p0
.end method

.method static synthetic d(Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;->d:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;
    .locals 1

    new-instance v0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;

    invoke-direct {v0, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;-><init>(Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;)V

    return-object v0
.end method

.method public setIsPalaceAd(Z)Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;->d:Z

    return-object p0
.end method

.method public setNativeAdOptionsAB(Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;)Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    return-object p0
.end method

.method public setNativeAdSize(I)Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;->c:I

    return-object p0
.end method

.method public setNativeBannerAd(Z)Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;->b:Z

    return-object p0
.end method
