.class public Lcom/miui/gamebooster/top/a;
.super Landroid/widget/ArrayAdapter;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final rk:Ljava/util/HashMap;


# instance fields
.field private resources:Landroid/content/res/Resources;

.field private rl:Lcom/miui/common/d/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/top/a;->rk:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/gamebooster/top/a;->rk:Ljava/util/HashMap;

    const v1, 0x7f0300c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/gamebooster/top/a;->rk:Ljava/util/HashMap;

    const v1, 0x7f0300bf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/top/a;->resources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public getHandler()Lcom/miui/common/d/f;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/top/a;->rl:Lcom/miui/common/d/f;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2

    sget-object v1, Lcom/miui/gamebooster/top/a;->rk:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/top/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/top/BaseModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/top/BaseModel;->getLayoutId()I

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
    .locals 6

    const/4 v1, 0x0

    const v5, 0x7f0a0016

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/top/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/top/BaseModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/top/BaseModel;->getLayoutId()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gamebooster/top/a;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez p2, :cond_0

    invoke-static {v3, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_1

    :goto_1
    invoke-virtual {v0, p1, p2, v3, p0}, Lcom/miui/gamebooster/top/BaseModel;->sW(ILandroid/view/View;Landroid/content/Context;Lcom/miui/gamebooster/top/a;)V

    return-object p2

    :pswitch_0
    new-instance v4, Lcom/miui/gamebooster/top/b;

    invoke-direct {v4}, Lcom/miui/gamebooster/top/b;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a0038

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v4, Lcom/miui/gamebooster/top/b;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0a00b0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/miui/gamebooster/top/b;->title:Landroid/widget/TextView;

    const v1, 0x7f0a017a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/miui/gamebooster/top/b;->ro:Landroid/widget/TextView;

    const v1, 0x7f0a0185

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lcom/miui/gamebooster/top/b;->rp:Landroid/widget/Button;

    const v1, 0x7f0a0248

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/miui/gamebooster/top/b;->rm:Landroid/widget/TextView;

    const v1, 0x7f0a0249

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lcom/miui/gamebooster/top/b;->rn:Landroid/widget/TextView;

    iget-object v1, v4, Lcom/miui/gamebooster/top/b;->rp:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v4, Lcom/miui/gamebooster/top/b;->rp:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    new-instance v4, Lcom/miui/gamebooster/top/c;

    invoke-direct {v4}, Lcom/miui/gamebooster/top/c;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a0247

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lcom/miui/gamebooster/top/c;->rq:Landroid/widget/Button;

    iget-object v1, v4, Lcom/miui/gamebooster/top/c;->rq:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v4, Lcom/miui/gamebooster/top/c;->rq:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/top/b;

    iget-object v1, v1, Lcom/miui/gamebooster/top/b;->rp:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/top/c;

    iget-object v1, v1, Lcom/miui/gamebooster/top/c;->rq:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x7f0300bf
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0300bf
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/top/a;->rk:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const v1, 0x7f0a0016

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public tg(Lcom/miui/common/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/top/a;->rl:Lcom/miui/common/d/f;

    return-void
.end method

.method public th()Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lcom/miui/common/card/FillParentDrawable;

    iget-object v1, p0, Lcom/miui/gamebooster/top/a;->resources:Landroid/content/res/Resources;

    const v2, 0x7f02030b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/common/card/FillParentDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
