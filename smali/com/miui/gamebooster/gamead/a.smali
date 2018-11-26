.class public Lcom/miui/gamebooster/gamead/a;
.super Landroid/widget/ArrayAdapter;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final kn:Ljava/util/HashMap;


# instance fields
.field public km:Lcom/miui/common/d/f;

.field private ko:Ljava/util/ArrayList;

.field private resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/gamead/a;->kn:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/gamebooster/gamead/a;->kn:Ljava/util/HashMap;

    const v1, 0x7f0300a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/gamebooster/gamead/a;->kn:Ljava/util/HashMap;

    const v1, 0x7f030199

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/gamebooster/gamead/a;->kn:Ljava/util/HashMap;

    const v1, 0x7f03019c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/gamebooster/gamead/a;->kn:Ljava/util/HashMap;

    const v1, 0x7f03019a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/gamebooster/gamead/a;->kn:Ljava/util/HashMap;

    const v1, 0x7f03019b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/gamebooster/gamead/a;->kn:Ljava/util/HashMap;

    const v1, 0x7f030197

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/common/d/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/a;->ko:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/a;->resources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/miui/gamebooster/gamead/a;->km:Lcom/miui/common/d/f;

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/gamead/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/BaseModel;

    sget-object v1, Lcom/miui/gamebooster/gamead/a;->kn:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/BaseModel;->getLayoutId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/gamead/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/BaseModel;

    invoke-virtual {p0}, Lcom/miui/gamebooster/gamead/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/BaseModel;->getLayoutId()I

    move-result v1

    if-nez p2, :cond_0

    invoke-static {v2, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2, v2, p0}, Lcom/miui/gamebooster/gamead/BaseModel;->kl(ILandroid/view/View;Landroid/content/Context;Lcom/miui/gamebooster/gamead/a;)V

    return-object p2

    :sswitch_0
    new-instance v3, Lcom/miui/gamebooster/gamead/b;

    invoke-direct {v3}, Lcom/miui/gamebooster/gamead/b;-><init>()V

    const v1, 0x7f0a01f5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/gamebooster/gamead/b;->kt:Landroid/widget/TextView;

    const v1, 0x7f0a01ef

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/gamebooster/gamead/b;->kp:Landroid/widget/ImageView;

    const v1, 0x7f0a01f3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/gamebooster/gamead/b;->ku:Landroid/widget/TextView;

    const v1, 0x7f0a01f2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/gamebooster/gamead/b;->kr:Landroid/widget/TextView;

    const v1, 0x7f0a01f0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/miui/gamebooster/gamead/b;->kq:Landroid/widget/ImageView;

    const v1, 0x7f0a01f6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v3, Lcom/miui/gamebooster/gamead/b;->ks:Landroid/widget/Button;

    const v1, 0x7f0a00c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/miui/gamebooster/gamead/b;->kv:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/miui/gamebooster/gamead/b;->kv:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v3, Lcom/miui/gamebooster/gamead/b;->ks:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v3, Lcom/miui/gamebooster/gamead/b;->kp:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v3, Lcom/miui/gamebooster/gamead/b;->kp:Landroid/widget/ImageView;

    check-cast v1, Lcom/miui/gamebooster/customview/GameAdImageView;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/miui/gamebooster/customview/GameAdImageView;->jM(Z)V

    iget-object v1, v3, Lcom/miui/gamebooster/gamead/b;->kv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v3, Lcom/miui/gamebooster/gamead/b;->kp:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v3, Lcom/miui/gamebooster/gamead/b;->ks:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_1
    new-instance v3, Lcom/miui/gamebooster/gamead/c;

    invoke-direct {v3}, Lcom/miui/gamebooster/gamead/c;-><init>()V

    const v1, 0x7f0a0405

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;

    iput-object v1, v3, Lcom/miui/gamebooster/gamead/c;->kw:Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_2
    new-instance v3, Lcom/miui/gamebooster/gamead/e;

    invoke-direct {v3}, Lcom/miui/gamebooster/gamead/e;-><init>()V

    const v1, 0x7f0a0415

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;

    iput-object v1, v3, Lcom/miui/gamebooster/gamead/e;->ky:Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_3
    new-instance v3, Lcom/miui/gamebooster/gamead/f;

    invoke-direct {v3}, Lcom/miui/gamebooster/gamead/f;-><init>()V

    const v1, 0x7f0a0408

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    iput-object v1, v3, Lcom/miui/gamebooster/gamead/f;->kz:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    iget-object v1, p0, Lcom/miui/gamebooster/gamead/a;->ko:Ljava/util/ArrayList;

    iget-object v4, v3, Lcom/miui/gamebooster/gamead/f;->kz:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_4
    new-instance v3, Lcom/miui/gamebooster/gamead/d;

    invoke-direct {v3}, Lcom/miui/gamebooster/gamead/d;-><init>()V

    const v1, 0x7f0a0410

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;

    iput-object v1, v3, Lcom/miui/gamebooster/gamead/d;->kx:Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0300a3 -> :sswitch_0
        0x7f030199 -> :sswitch_1
        0x7f03019a -> :sswitch_3
        0x7f03019b -> :sswitch_4
        0x7f03019c -> :sswitch_2
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/gamead/a;->kn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mw()Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lcom/miui/antivirus/a/a;

    iget-object v1, p0, Lcom/miui/gamebooster/gamead/a;->resources:Landroid/content/res/Resources;

    const v2, 0x7f020079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/antivirus/a/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public mx()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/a;->ko:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
