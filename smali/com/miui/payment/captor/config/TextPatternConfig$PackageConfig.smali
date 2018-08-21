.class public Lcom/miui/payment/captor/config/TextPatternConfig$PackageConfig;
.super Ljava/lang/Object;
.source "TextPatternConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/captor/config/TextPatternConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageConfig"
.end annotation


# instance fields
.field private activityPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/captor/config/TextPatternConfig$ActivityConfig;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityPatterns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/captor/config/TextPatternConfig$ActivityConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfig$PackageConfig;->activityPatterns:Ljava/util/List;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfig$PackageConfig;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityPatterns(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/captor/config/TextPatternConfig$ActivityConfig;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/payment/captor/config/TextPatternConfig$PackageConfig;->activityPatterns:Ljava/util/List;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/config/TextPatternConfig$PackageConfig;->packageName:Ljava/lang/String;

    return-void
.end method
