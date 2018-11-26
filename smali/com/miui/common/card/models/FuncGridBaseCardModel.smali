.class public Lcom/miui/common/card/models/FuncGridBaseCardModel;
.super Lcom/miui/common/card/models/FunctionCardModel;
.source ""


# static fields
.field private static final COLUMS:I = 0x3


# instance fields
.field private isBottomRow:Z

.field private isTopRow:Z

.field private previousCardModelIsBlankLine:Z


# direct methods
.method static synthetic -get0(Lcom/miui/common/card/models/FuncGridBaseCardModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomRow:Z

    return v0
.end method

.method static synthetic -get1(Lcom/miui/common/card/models/FuncGridBaseCardModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopRow:Z

    return v0
.end method

.method static synthetic -get2(Lcom/miui/common/card/models/FuncGridBaseCardModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel;->previousCardModelIsBlankLine:Z

    return v0
.end method

.method public constructor <init>(ILcom/miui/securityscan/model/AbsModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/common/card/models/FunctionCardModel;-><init>(ILcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setBottomRow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomRow:Z

    return-void
.end method

.method public setPreviousLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel;->previousCardModelIsBlankLine:Z

    return-void
.end method

.method public setTopRow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopRow:Z

    return-void
.end method
