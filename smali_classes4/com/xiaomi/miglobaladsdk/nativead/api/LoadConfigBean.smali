.class public Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;
.super Ljava/lang/Object;
.source "LoadConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;,
        Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;
    }
.end annotation


# instance fields
.field public final adSize:I

.field public final isNativeBannerAd:Z

.field public final isPalaceAd:Z

.field public final positionAB:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;)Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;->positionAB:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;->b(Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;->isNativeBannerAd:Z

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;->c(Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;->adSize:I

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;->d(Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;->isPalaceAd:Z

    return-void
.end method
