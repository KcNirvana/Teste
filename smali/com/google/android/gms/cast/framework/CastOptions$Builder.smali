.class public final Lcom/google/android/gms/cast/framework/CastOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/CastOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzcz:Lcom/google/android/gms/cast/LaunchOptions;

.field private zzhc:Ljava/lang/String;

.field private zzhd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzhe:Z

.field private zzhf:Z

.field private zzhg:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

.field private zzhh:Z

.field private zzhi:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhd:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/cast/LaunchOptions;

    invoke-direct {v0}, Lcom/google/android/gms/cast/LaunchOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzcz:Lcom/google/android/gms/cast/LaunchOptions;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhf:Z

    new-instance v1, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->build()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhg:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhh:Z

    const-wide v0, 0x3fa99999a0000000L    # 0.05000000074505806

    iput-wide v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhi:D

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/cast/framework/CastOptions;
    .locals 11

    new-instance v10, Lcom/google/android/gms/cast/framework/CastOptions;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhd:Ljava/util/List;

    iget-boolean v3, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhe:Z

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzcz:Lcom/google/android/gms/cast/LaunchOptions;

    iget-boolean v5, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhf:Z

    iget-object v6, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhg:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    iget-boolean v7, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhh:Z

    iget-wide v8, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhi:D

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/cast/framework/CastOptions;-><init>(Ljava/lang/String;Ljava/util/List;ZLcom/google/android/gms/cast/LaunchOptions;ZLcom/google/android/gms/cast/framework/media/CastMediaOptions;ZD)V

    return-object v10
.end method

.method public final setCastMediaOptions(Lcom/google/android/gms/cast/framework/media/CastMediaOptions;)Lcom/google/android/gms/cast/framework/CastOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhg:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    return-object p0
.end method

.method public final setEnableReconnectionService(Z)Lcom/google/android/gms/cast/framework/CastOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhh:Z

    return-object p0
.end method

.method public final setLaunchOptions(Lcom/google/android/gms/cast/LaunchOptions;)Lcom/google/android/gms/cast/framework/CastOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzcz:Lcom/google/android/gms/cast/LaunchOptions;

    return-object p0
.end method

.method public final setReceiverApplicationId(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/CastOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhc:Ljava/lang/String;

    return-object p0
.end method

.method public final setResumeSavedSession(Z)Lcom/google/android/gms/cast/framework/CastOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhf:Z

    return-object p0
.end method

.method public final setStopReceiverApplicationWhenEndingSession(Z)Lcom/google/android/gms/cast/framework/CastOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhe:Z

    return-object p0
.end method

.method public final setSupportedNamespaces(Ljava/util/List;)Lcom/google/android/gms/cast/framework/CastOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/cast/framework/CastOptions$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhd:Ljava/util/List;

    return-object p0
.end method

.method public final setVolumeDeltaBeforeIceCreamSandwich(D)Lcom/google/android/gms/cast/framework/CastOptions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->zzhi:D

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "volumeDelta must be greater than 0 and less or equal to 0.5"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
