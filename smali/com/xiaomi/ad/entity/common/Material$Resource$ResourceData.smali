.class public Lcom/xiaomi/ad/entity/common/Material$Resource$ResourceData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/entity/common/Material$Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceData"
.end annotation


# instance fields
.field private localPath:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field

.field private md5:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation

    .annotation runtime Lcom/a/a/a/b;
        a = "digest"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material$Resource$ResourceData;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material$Resource$ResourceData;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material$Resource$ResourceData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/entity/common/Material$Resource$ResourceData;->localPath:Ljava/lang/String;

    return-void
.end method
