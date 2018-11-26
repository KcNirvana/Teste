.class public Lcom/miui/luckymoney/model/FastOpenAppInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mIsFastOpen:Z

.field private mPackageInfos:Ljava/util/ArrayList;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/luckymoney/model/FastOpenAppInfo;->mIsFastOpen:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/model/FastOpenAppInfo;->mPackageInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/FastOpenAppInfo;->mPackageInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPackageInfos()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/FastOpenAppInfo;->mPackageInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/FastOpenAppInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isFastOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/model/FastOpenAppInfo;->mIsFastOpen:Z

    return v0
.end method

.method public setFastOpen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/luckymoney/model/FastOpenAppInfo;->mIsFastOpen:Z

    return-void
.end method

.method public setPackageInfos(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/model/FastOpenAppInfo;->mPackageInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/model/FastOpenAppInfo;->mTitle:Ljava/lang/String;

    return-void
.end method
