.class public Lcom/miui/weather2/model/w;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/model/w$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/weather2/model/SecondaryPageListItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/model/w;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/model/w;->f:I

    iput-object p1, p0, Lcom/miui/weather2/model/w;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/weather2/model/w;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/model/w;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/w;->c:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/miui/weather2/model/w;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/model/w;->d:I

    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 8

    const v7, 0x7f0f00c2

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/weather2/model/w$a;

    invoke-direct {v0, p0, v3}, Lcom/miui/weather2/model/w$a;-><init>(Lcom/miui/weather2/model/w;Lcom/miui/weather2/model/x;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v1, v0

    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    const v0, 0x7f0f00b4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/weather2/model/w$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0f00bf

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/weather2/model/w$a;->c:Landroid/widget/TextView;

    const v0, 0x7f0f00c0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/weather2/model/w$a;->d:Landroid/widget/TextView;

    const v0, 0x7f0f008d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/weather2/model/w$a;->f:Landroid/view/View;

    const v0, 0x7f0f00be

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/weather2/model/w$a;->e:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v3, v1, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    const/4 v4, 0x0

    const v0, 0x7f0f00bd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v3, v4

    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-object v2

    :pswitch_1
    iget-object v1, p0, Lcom/miui/weather2/model/w;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f03002f

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-array v2, v4, [Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/weather2/model/w;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030030

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/miui/weather2/model/w$a;

    invoke-direct {v0, p0, v3}, Lcom/miui/weather2/model/w$a;-><init>(Lcom/miui/weather2/model/w;Lcom/miui/weather2/model/x;)V

    new-array v2, v4, [Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/weather2/model/w;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030031

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v1, Lcom/miui/weather2/model/w$a;

    invoke-direct {v1, p0, v3}, Lcom/miui/weather2/model/w$a;-><init>(Lcom/miui/weather2/model/w;Lcom/miui/weather2/model/x;)V

    new-array v0, v6, [Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v3, v4

    iget-object v3, v1, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    const v0, 0x7f0f00c3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v3, v5

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/miui/weather2/model/w;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030032

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/miui/weather2/model/w$a;

    invoke-direct {v0, p0, v3}, Lcom/miui/weather2/model/w$a;-><init>(Lcom/miui/weather2/model/w;Lcom/miui/weather2/model/x;)V

    new-array v2, v4, [Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/miui/weather2/model/w;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03002c

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/miui/weather2/model/w$a;

    invoke-direct {v0, p0, v3}, Lcom/miui/weather2/model/w$a;-><init>(Lcom/miui/weather2/model/w;Lcom/miui/weather2/model/x;)V

    new-array v2, v4, [Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/miui/weather2/model/w;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03002d

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/miui/weather2/model/w$a;

    invoke-direct {v0, p0, v3}, Lcom/miui/weather2/model/w$a;-><init>(Lcom/miui/weather2/model/w;Lcom/miui/weather2/model/x;)V

    new-array v2, v4, [Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/miui/weather2/model/w;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03002e

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v1, Lcom/miui/weather2/model/w$a;

    invoke-direct {v1, p0, v3}, Lcom/miui/weather2/model/w$a;-><init>(Lcom/miui/weather2/model/w;Lcom/miui/weather2/model/x;)V

    const v0, 0x7f0f00c1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Lcom/miui/weather2/model/w$a;->g:Landroid/widget/FrameLayout;

    new-array v0, v4, [Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/miui/weather2/model/w;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030033

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v1, Lcom/miui/weather2/model/w$a;

    invoke-direct {v1, p0, v3}, Lcom/miui/weather2/model/w$a;-><init>(Lcom/miui/weather2/model/w;Lcom/miui/weather2/model/x;)V

    new-array v0, v6, [Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v3, v4

    iget-object v3, v1, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    const v0, 0x7f0f00c3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v3, v5

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/miui/weather2/model/w;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f030027

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/miui/weather2/model/w;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030034

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/miui/weather2/model/w$a;

    invoke-direct {v0, p0, v3}, Lcom/miui/weather2/model/w$a;-><init>(Lcom/miui/weather2/model/w;Lcom/miui/weather2/model/x;)V

    new-array v2, v4, [Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private a(Landroid/view/View;Lcom/miui/weather2/model/SecondaryPageListItem;I)V
    .locals 11

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "5"

    invoke-virtual {p2}, Lcom/miui/weather2/model/SecondaryPageListItem;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/miui/weather2/model/w$a;

    if-eqz v8, :cond_0

    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/miui/weather2/model/SecondaryPageListItem;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->b:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/miui/weather2/model/SecondaryPageListItem;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_2
    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/miui/weather2/model/SecondaryPageListItem;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->c:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/miui/weather2/model/SecondaryPageListItem;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_3
    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/miui/weather2/model/SecondaryPageListItem;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->d:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/miui/weather2/model/SecondaryPageListItem;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_4
    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->f:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-boolean v0, p2, Lcom/miui/weather2/model/SecondaryPageListItem;->i:Z

    if-eqz v0, :cond_b

    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->f:Landroid/view/View;

    invoke-virtual {p2}, Lcom/miui/weather2/model/SecondaryPageListItem;->g()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_5
    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-boolean v0, p2, Lcom/miui/weather2/model/SecondaryPageListItem;->q:Z

    if-eqz v0, :cond_c

    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/weather2/model/SecondaryPageListItem;->f()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_6
    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    iget-object v0, p2, Lcom/miui/weather2/model/SecondaryPageListItem;->n:[Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    array-length v0, v0

    if-lez v0, :cond_d

    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    array-length v0, v0

    iget-object v1, p2, Lcom/miui/weather2/model/SecondaryPageListItem;->n:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    :goto_7
    iget-object v1, v8, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Lcom/miui/weather2/model/w;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v1

    iget-object v2, p2, Lcom/miui/weather2/model/SecondaryPageListItem;->n:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v1

    const v2, 0x7f02018a

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/d;->a(I)Lcom/bumptech/glide/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/c;->c()Lcom/bumptech/glide/c;

    move-result-object v1

    iget-object v2, v8, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    move-object v0, p2

    goto/16 :goto_1

    :cond_8
    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_b
    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_c
    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_d
    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->g:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_10

    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->g:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lcom/miui/weather2/model/w$a;->a:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/miui/weather2/model/SecondaryPageListItem;->h()Ljava/util/List;

    move-result-object v10

    iget-object v0, p2, Lcom/miui/weather2/model/SecondaryPageListItem;->D:Ljava/util/List;

    if-eqz v0, :cond_f

    if-eqz v10, :cond_f

    iget-object v0, p2, Lcom/miui/weather2/model/SecondaryPageListItem;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x0

    move v9, v0

    :goto_8
    iget-object v0, p2, Lcom/miui/weather2/model/SecondaryPageListItem;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_f

    iget-object v0, p2, Lcom/miui/weather2/model/SecondaryPageListItem;->D:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/IndexDataListDataImageTagBean;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View$OnClickListener;

    if-nez v0, :cond_e

    :goto_9
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_8

    :cond_e
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/weather2/structures/IndexDataListDataImageTagBean;->getX()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0}, Lcom/miui/weather2/structures/IndexDataListDataImageTagBean;->getY()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, v8, Lcom/miui/weather2/model/w$a;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/IndexDataListDataImageTagBean;->getTag_name()Ljava/lang/String;

    move-result-object v2

    iget v3, p2, Lcom/miui/weather2/model/SecondaryPageListItem;->x:I

    iget v4, p2, Lcom/miui/weather2/model/SecondaryPageListItem;->y:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/weather2/model/w;->a(Landroid/widget/FrameLayout;Ljava/lang/String;IIIILandroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    const-string v1, "Wth2:SecondaryPageListAdapter"

    const-string v2, "updateView()"

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_f
    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_10
    :goto_a
    iput-object p1, p2, Lcom/miui/weather2/model/SecondaryPageListItem;->b:Landroid/view/View;

    goto/16 :goto_0

    :cond_11
    iget-object v0, v8, Lcom/miui/weather2/model/w$a;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a
.end method

.method private a(Landroid/widget/FrameLayout;Ljava/lang/String;IIIILandroid/view/View$OnClickListener;)V
    .locals 6

    const/4 v4, -0x2

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    if-ltz p5, :cond_0

    iget v0, p0, Lcom/miui/weather2/model/w;->d:I

    if-le p5, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/miui/weather2/model/w;->d:I

    mul-int/2addr v0, p5

    div-int v1, v0, p3

    iget v0, p0, Lcom/miui/weather2/model/w;->d:I

    if-gt v1, v0, :cond_0

    iget v0, p0, Lcom/miui/weather2/model/w;->d:I

    mul-int/2addr v0, p6

    div-int v2, v0, p3

    iget v0, p0, Lcom/miui/weather2/model/w;->d:I

    div-int/lit8 v0, v0, 0x2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-ge p5, v0, :cond_2

    new-instance v0, Lcom/miui/weather2/view/j;

    iget-object v4, p0, Lcom/miui/weather2/model/w;->a:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, p2}, Lcom/miui/weather2/view/j;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    const/4 v4, 0x3

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_1
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p7, :cond_0

    invoke-virtual {v0, p7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/miui/weather2/view/j;

    iget-object v4, p0, Lcom/miui/weather2/model/w;->a:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5, p2}, Lcom/miui/weather2/view/j;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    const/4 v4, 0x5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v4, p0, Lcom/miui/weather2/model/w;->d:I

    sub-int v1, v4, v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method private a(Lcom/miui/weather2/structures/InfoListNodeBean;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoListNodeBean;->getData()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v0, Lcom/miui/weather2/model/SecondaryPageListItem;

    iget-object v1, p0, Lcom/miui/weather2/model/w;->a:Landroid/content/Context;

    iget v3, p0, Lcom/miui/weather2/model/w;->g:I

    iget-boolean v4, p0, Lcom/miui/weather2/model/w;->h:Z

    iget v5, p0, Lcom/miui/weather2/model/w;->i:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/weather2/model/SecondaryPageListItem;-><init>(Landroid/content/Context;Lcom/miui/weather2/model/w;IZI)V

    invoke-virtual {v7}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrResource()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->h:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrSummary()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->g:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoListNodeBean;->getTemplate()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoListNodeBean;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/weather2/model/w;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->r:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrLink()Lcom/miui/weather2/structures/LinkBean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v7}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrLink()Lcom/miui/weather2/structures/LinkBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/LinkBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->p:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrLink()Lcom/miui/weather2/structures/LinkBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/LinkBean;->getAppUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->v:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrLink()Lcom/miui/weather2/structures/LinkBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/LinkBean;->getUseSystemBrowser()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->z:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrLink()Lcom/miui/weather2/structures/LinkBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/LinkBean;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->A:Ljava/lang/String;

    :cond_2
    const-string v1, "3"

    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoListNodeBean;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v7}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrImges()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->j:Ljava/lang/String;

    const-string v2, "112"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->n:[Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->n:[Ljava/lang/String;

    aput-object v1, v2, v6

    iput v9, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->l:I

    :goto_1
    invoke-virtual {v7}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrLink()Lcom/miui/weather2/structures/LinkBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/LinkBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->m:Ljava/lang/String;

    iput-boolean v6, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->i:Z

    invoke-virtual {v7}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrStatKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->w:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/miui/weather2/model/w;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->o:I

    iget-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/model/w;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->j:Ljava/lang/String;

    const-string v2, "31"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v9, :cond_0

    new-array v1, v9, [Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->n:[Ljava/lang/String;

    move v2, v6

    :goto_2
    iget-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->n:[Ljava/lang/String;

    array-length v1, v1

    if-ge v2, v1, :cond_5

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->n:[Ljava/lang/String;

    aput-object v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_5
    const/4 v1, 0x2

    iput v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->l:I

    goto :goto_1

    :cond_6
    iget-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->j:Ljava/lang/String;

    const-string v2, "12"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->n:[Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->n:[Ljava/lang/String;

    aput-object v1, v2, v6

    const/4 v1, 0x6

    iput v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->l:I

    goto :goto_1

    :cond_7
    iget-object v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->j:Ljava/lang/String;

    const-string v2, "11"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->n:[Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->n:[Ljava/lang/String;

    aput-object v1, v2, v6

    const/16 v1, 0xb

    iput v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->l:I

    goto/16 :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/weather2/structures/InfoListNodeBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/InfoListNodeBean;

    invoke-direct {p0, v0}, Lcom/miui/weather2/model/w;->a(Lcom/miui/weather2/structures/InfoListNodeBean;)V

    goto :goto_0
.end method


# virtual methods
.method public a(IZI)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/model/w;->g:I

    iput-boolean p2, p0, Lcom/miui/weather2/model/w;->h:Z

    iput p3, p0, Lcom/miui/weather2/model/w;->i:I

    return-void
.end method

.method protected a(Lcom/miui/weather2/model/SecondaryPageListItem;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/w;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/miui/weather2/model/w;->notifyDataSetChanged()V

    iget v0, p0, Lcom/miui/weather2/model/w;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/weather2/model/w;->f:I

    :cond_0
    return-void
.end method

.method public a(Lcom/miui/weather2/structures/InfoBean;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoBean;->getCards()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/model/w;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/InfoCardBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoCardBean;->getTemplate()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoCardBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/model/w;->a(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/miui/weather2/model/w;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/w;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/w;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/model/SecondaryPageListItem;

    iget v0, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->l:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/model/w;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/model/SecondaryPageListItem;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->l:I

    if-ltz v1, :cond_0

    iget v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->l:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_1

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2

    :cond_1
    if-nez p2, :cond_2

    iget v1, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->l:I

    invoke-direct {p0, v1}, Lcom/miui/weather2/model/w;->a(I)Landroid/view/View;

    move-result-object p2

    :cond_2
    iget v1, p0, Lcom/miui/weather2/model/w;->f:I

    invoke-direct {p0, p2, v0, v1}, Lcom/miui/weather2/model/w;->a(Landroid/view/View;Lcom/miui/weather2/model/SecondaryPageListItem;I)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
