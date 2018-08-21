.class Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;
.super Landroid/widget/BaseAdapter;
.source "AssistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListAdapterImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private addAnimation(Landroid/view/View;Z)V
    .locals 4

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->access$400(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl$1;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->access$400(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->access$408(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)I

    goto :goto_0

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addFootViewAnimation(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->access$300(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->access$400(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->access$300(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->access$300(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->addAnimation(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private analysisBaseStatis(Lcom/miui/home/launcher/assistant/interfaces/BaseStatis;Ljava/lang/String;I)V
    .locals 10

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/miui/home/launcher/assistant/interfaces/BaseStatis;->getItemQuantity()I

    move-result v4

    invoke-interface {p1}, Lcom/miui/home/launcher/assistant/interfaces/BaseStatis;->getItemSequence()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lcom/miui/home/launcher/assistant/interfaces/BaseStatis;->isItemContentEmpty()Z

    move-result v9

    invoke-interface {p1}, Lcom/miui/home/launcher/assistant/interfaces/BaseStatis;->getItemSource()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/miui/home/launcher/assistant/interfaces/BaseStatis;->isCardShrink()Z

    move-result v8

    const-string/jumbo v0, "key_express"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "key_favorite"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "key_payment"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-interface {p1}, Lcom/miui/home/launcher/assistant/interfaces/BaseStatis;->isItemAuthorized()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    move-object v0, p0

    move v2, p3

    move v4, v3

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->analysisCard(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->getCount()I

    move-result v3

    if-eqz v9, :cond_2

    const-string/jumbo v7, "0"

    :goto_1
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->analysisCard(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "1"

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->getCount()I

    move-result v3

    if-eqz v9, :cond_4

    const-string/jumbo v7, "0"

    :goto_2
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->analysisCard(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const-string/jumbo v7, "1"

    goto :goto_2
.end method

.method private analysisCard(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackScreenCards(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "AssistAdapter"

    const-string/jumbo v1, "card: %s   position:%s    count:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/miui/home/launcher/assistant/module/CardSource;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mCards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/module/CardSource;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->getItem(I)Lcom/miui/home/launcher/assistant/module/CardSource;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4

    const/4 v1, -0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->getItem(I)Lcom/miui/home/launcher/assistant/module/CardSource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->access$000(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/CardSource;->getResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->getItem(I)Lcom/miui/home/launcher/assistant/module/CardSource;

    move-result-object v1

    const-string/jumbo v2, "AssistAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getView position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    const-string/jumbo v2, "AssistAdapter"

    const-string/jumbo v3, "getview cursor = null"

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/CardSource;->getViewClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->access$200(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/CardSource;->getResId()I

    move-result v3

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v5}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->addAnimation(Landroid/view/View;Z)V

    const-string/jumbo v2, "AssistAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inflaterCard Item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/CardSource;->getViewClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->addFootViewAnimation(I)V

    instance-of v2, p2, Lcom/miui/home/launcher/assistant/interfaces/BaseCard;

    if-eqz v2, :cond_3

    const-string/jumbo v2, "AssistAdapter"

    const-string/jumbo v3, "getView updateCard"

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p2

    check-cast v2, Lcom/miui/home/launcher/assistant/interfaces/BaseCard;

    invoke-interface {v2, v1, p1}, Lcom/miui/home/launcher/assistant/interfaces/BaseCard;->updateCard(Lcom/miui/home/launcher/assistant/module/CardSource;I)V

    :cond_3
    instance-of v2, p2, Lcom/miui/home/launcher/assistant/interfaces/BaseStatis;

    if-eqz v2, :cond_4

    move-object v2, p2

    check-cast v2, Lcom/miui/home/launcher/assistant/interfaces/BaseStatis;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/CardSource;->getPrefKey()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->analysisBaseStatis(Lcom/miui/home/launcher/assistant/interfaces/BaseStatis;Ljava/lang/String;I)V

    :cond_4
    move-object v0, p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->access$000(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
