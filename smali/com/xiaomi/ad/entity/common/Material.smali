.class public Lcom/xiaomi/ad/entity/common/Material;
.super Lcom/xiaomi/ad/entity/contract/GsonEntityBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/entity/common/Material$1;,
        Lcom/xiaomi/ad/entity/common/Material$Resource;
    }
.end annotation


# static fields
.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "Material"

.field private static final VIEW_LOG_LEVEL_MATERIAL:I = 0x0

.field private static final VIEW_LOG_LEVEL_RESOURCE:I = 0x1


# instance fields
.field private adPassBack:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation

    .annotation runtime Lcom/a/a/a/b;
        a = "ex"
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

.field private resources:Ljava/util/List;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/entity/common/Material$Resource;",
            ">;"
        }
    .end annotation
.end field

.field private viewLogLevel:I
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

    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/GsonEntityBase;-><init>()V

    return-void
.end method

.method public static final deserialize(Ljava/lang/String;)Lcom/xiaomi/ad/entity/common/Material;
    .locals 2

    const-class v0, Lcom/xiaomi/ad/entity/common/Material;

    const-string v1, "Material"

    invoke-static {v0, p0, v1}, Lcom/xiaomi/ad/entity/util/GsonUtils;->fromJsonString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/ad/entity/contract/IGsonEntity;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/entity/common/Material;

    return-object v0
.end method


# virtual methods
.method public getAdPassBack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material;->adPassBack:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material;->extra:Lcom/xiaomi/ad/entity/common/StringHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material;->extra:Lcom/xiaomi/ad/entity/common/StringHolder;

    iget-object v0, v0, Lcom/xiaomi/ad/entity/common/StringHolder;->value:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/ad/entity/common/Material;->id:J

    return-wide v0
.end method

.method public getResource(I)Lcom/xiaomi/ad/entity/common/Material$Resource;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material;->resources:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/xiaomi/ad/internal/common/util/CollectionUtils;->get(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/entity/common/Material$Resource;

    return-object v0
.end method

.method public getResourceCount()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material;->resources:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/util/CollectionUtils;->getSize(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/entity/common/Material$Resource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material;->resources:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/util/CollectionUtils;->avoidNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Material"

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

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material;->viewMonitorUrls:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/ad/entity/util/EntityUtils;->ignoreEmptyItem(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isMaterialViewLogLevel()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/ad/entity/common/Material;->viewLogLevel:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResourceViewLogLevel()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/xiaomi/ad/entity/common/Material;->viewLogLevel:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdPassBack(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/entity/common/Material;->adPassBack:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/xiaomi/ad/entity/common/Material;->viewMonitorUrls:Ljava/util/List;

    return-void
.end method
