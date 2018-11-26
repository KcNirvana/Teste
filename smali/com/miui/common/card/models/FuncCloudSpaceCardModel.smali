.class public Lcom/miui/common/card/models/FuncCloudSpaceCardModel;
.super Lcom/miui/common/card/models/FunctionCardModel;
.source ""


# instance fields
.field private colors:[I


# direct methods
.method static synthetic -get0(Lcom/miui/common/card/models/FuncCloudSpaceCardModel;)[I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;->colors:[I

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    const v0, 0x7f03004d

    invoke-direct {p0, v0, p1}, Lcom/miui/common/card/models/FunctionCardModel;-><init>(ILcom/miui/securityscan/model/AbsModel;)V

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;->colors:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080064
        0x7f080068
        0x7f080069
        0x7f08006a
        0x7f08006b
        0x7f08006c
    .end array-data
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel$FuncCloudSpaceCardViewHolder;-><init>(Lcom/miui/common/card/models/FuncCloudSpaceCardModel;Landroid/view/View;)V

    return-object v0
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
