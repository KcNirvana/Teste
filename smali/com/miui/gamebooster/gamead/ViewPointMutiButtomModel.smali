.class public Lcom/miui/gamebooster/gamead/ViewPointMutiButtomModel;
.super Lcom/miui/gamebooster/gamead/BaseViewPointModel;
.source ""


# instance fields
.field private mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

.field private mGameMode:Lcom/miui/gamebooster/gamead/ViewPointGameModel;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/gamead/ViewPointGameModel;Lcom/miui/gamebooster/gamead/ViewPointCountModel;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/gamead/BaseViewPointModel;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/gamead/ViewPointMutiButtomModel;->mGameMode:Lcom/miui/gamebooster/gamead/ViewPointGameModel;

    iput-object p2, p0, Lcom/miui/gamebooster/gamead/ViewPointMutiButtomModel;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    sget-object v0, Lcom/miui/gamebooster/gamead/ViewPointViewType;->iW:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointMutiButtomModel;->mViewPointViewType:Lcom/miui/gamebooster/gamead/ViewPointViewType;

    return-void
.end method


# virtual methods
.method public kl(ILandroid/view/View;Landroid/content/Context;Lcom/miui/gamebooster/gamead/a;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/gamebooster/gamead/BaseViewPointModel;->kl(ILandroid/view/View;Landroid/content/Context;Lcom/miui/gamebooster/gamead/a;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/d;

    iget-object v0, v0, Lcom/miui/gamebooster/gamead/d;->kx:Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;

    invoke-virtual {v0, p0, p1}, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->iE(Lcom/miui/gamebooster/gamead/ViewPointMutiButtomModel;I)V

    return-void
.end method

.method public lB()Lcom/miui/gamebooster/gamead/ViewPointGameModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointMutiButtomModel;->mGameMode:Lcom/miui/gamebooster/gamead/ViewPointGameModel;

    return-object v0
.end method

.method public lC()Lcom/miui/gamebooster/gamead/ViewPointCountModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/ViewPointMutiButtomModel;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    return-object v0
.end method
