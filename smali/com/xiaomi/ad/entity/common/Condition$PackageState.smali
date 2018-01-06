.class public Lcom/xiaomi/ad/entity/common/Condition$PackageState;
.super Lcom/xiaomi/ad/entity/contract/GsonEntityBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/entity/common/Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageState"
.end annotation


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "PackageState"


# instance fields
.field private isActive:Z
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private isMusicPlay:Z
    .annotation runtime Lcom/a/a/a/a;
    .end annotation

    .annotation runtime Lcom/a/a/a/b;
        a = "musicPlaying"
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private type:Ljava/util/List;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/GsonEntityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition$PackageState;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "PackageState"

    return-object v0
.end method

.method public getType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition$PackageState;->type:Ljava/util/List;

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Condition$PackageState;->type:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/ad/entity/common/Condition$PackageState;->isActive:Z

    return v0
.end method

.method public isMusicPlay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/ad/entity/common/Condition$PackageState;->isMusicPlay:Z

    return v0
.end method
