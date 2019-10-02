.class public Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;
.super Ljava/lang/Object;
.source "MomentPage.java"


# instance fields
.field private provider:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

.field private title:Ljava/lang/String;

.field private titleLayoutType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProvider()Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;->provider:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleLayoutType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;->titleLayoutType:I

    return v0
.end method

.method public setProvider(Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;->provider:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitleLayoutType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;->titleLayoutType:I

    return-void
.end method
