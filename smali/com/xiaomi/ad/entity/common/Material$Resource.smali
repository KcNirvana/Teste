.class public Lcom/xiaomi/ad/entity/common/Material$Resource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/entity/common/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/entity/common/Material$Resource$Deeplink;,
        Lcom/xiaomi/ad/entity/common/Material$Resource$ResourceData;
    }
.end annotation


# instance fields
.field private clickMonitorUrls:Ljava/util/List;
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

.field private deeplinkPackageName:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation

    .annotation runtime Lcom/a/a/a/b;
        a = "packageName"
    .end annotation
.end field

.field private deeplinkUrl:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private describe:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation

    .annotation runtime Lcom/a/a/a/b;
        a = "desc"
    .end annotation
.end field

.field private extra:Lcom/xiaomi/ad/entity/common/StringHolder;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private landingPageUrl:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private resourceDatas:Ljava/util/List;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation

    .annotation runtime Lcom/a/a/a/b;
        a = "urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/entity/common/Material$Resource$ResourceData;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private viewMonitorUrls:Ljava/util/List;
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
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClickMonitorUrls()Ljava/util/List;
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

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material$Resource;->clickMonitorUrls:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/ad/entity/util/EntityUtils;->ignoreEmptyItem(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeeplink()Lcom/xiaomi/ad/entity/common/Material$Resource$Deeplink;
    .locals 4

    new-instance v0, Lcom/xiaomi/ad/entity/common/Material$Resource$Deeplink;

    iget-object v1, p0, Lcom/xiaomi/ad/entity/common/Material$Resource;->deeplinkPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/ad/entity/common/Material$Resource;->deeplinkUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/ad/entity/common/Material$Resource$Deeplink;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/ad/entity/common/Material$1;)V

    return-object v0
.end method

.method public getDescribe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material$Resource;->describe:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material$Resource;->extra:Lcom/xiaomi/ad/entity/common/StringHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material$Resource;->extra:Lcom/xiaomi/ad/entity/common/StringHolder;

    iget-object v0, v0, Lcom/xiaomi/ad/entity/common/StringHolder;->value:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/ad/entity/common/Material$Resource;->id:J

    return-wide v0
.end method

.method public getLandingPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material$Resource;->landingPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceData(I)Lcom/xiaomi/ad/entity/common/Material$Resource$ResourceData;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material$Resource;->resourceDatas:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/xiaomi/ad/internal/common/util/CollectionUtils;->get(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/entity/common/Material$Resource$ResourceData;

    return-object v0
.end method

.method public getResourceDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material$Resource;->resourceDatas:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/util/CollectionUtils;->getSize(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public getResourceDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/entity/common/Material$Resource$ResourceData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material$Resource;->resourceDatas:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/util/CollectionUtils;->avoidNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material$Resource;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material$Resource;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getViewMonitorUrls()Ljava/util/List;
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

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material$Resource;->viewMonitorUrls:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/ad/entity/util/EntityUtils;->ignoreEmptyItem(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setClickMonitorUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/ad/entity/common/Material$Resource;->clickMonitorUrls:Ljava/util/List;

    return-void
.end method

.method public setViewMonitorUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/ad/entity/common/Material$Resource;->viewMonitorUrls:Ljava/util/List;

    return-void
.end method
