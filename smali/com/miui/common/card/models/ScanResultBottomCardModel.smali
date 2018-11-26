.class public Lcom/miui/common/card/models/ScanResultBottomCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source ""


# instance fields
.field private map:Ljava/util/Map;

.field private resId:I

.field private status:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel;->map:Ljava/util/Map;

    return-object v0
.end method

.method public getResId()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel;->resId:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setMap(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel;->map:Ljava/util/Map;

    return-void
.end method

.method public setResId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel;->resId:I

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel;->status:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel;->title:Ljava/lang/String;

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
