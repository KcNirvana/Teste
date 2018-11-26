.class public Lcom/miui/gamebooster/b/e;
.super Landroid/widget/ArrayAdapter;
.source ""


# static fields
.field private static final synthetic rC:[I

.field private static final rv:Ljava/util/HashMap;


# instance fields
.field private mContext:Landroid/content/Context;

.field private rA:Ljava/util/List;

.field private rB:Ljava/util/List;

.field private rw:Z

.field private rx:Ljava/util/List;

.field private ry:Z

.field private rz:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/b/e;->rv:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/gamebooster/b/e;->rv:Ljava/util/HashMap;

    const v1, 0x7f0300b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/gamebooster/b/e;->rv:Ljava/util/HashMap;

    const v1, 0x7f0300ae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/gamebooster/b/e;->rv:Ljava/util/HashMap;

    const v1, 0x7f0300af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/gamebooster/b/e;->rv:Ljava/util/HashMap;

    const v1, 0x7f0300b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/b/e;->rA:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/b/e;->rx:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/b/e;->rB:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/b/e;->rz:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/miui/gamebooster/b/e;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/b/e;->rB:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/miui/gamebooster/b/e;->tp(Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/miui/gamebooster/b/e;->tn(Z)V

    iput-boolean p3, p0, Lcom/miui/gamebooster/b/e;->ry:Z

    return-void
.end method

.method private tm(Ljava/util/List;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->mL()Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    move-result-object v3

    sget-object v4, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qY:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    invoke-virtual {v3, v4}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->mN()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/model/d;->mK(Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v1, v0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/d;

    invoke-virtual {v0, v5}, Lcom/miui/gamebooster/model/d;->mK(Z)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {p1, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->mO()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v5}, Lcom/miui/gamebooster/model/d;->mK(Z)V

    goto :goto_1
.end method

.method private tn(Z)V
    .locals 6

    const v5, 0x7f0300ae

    const/4 v3, 0x3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/b/e;->rA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/miui/gamebooster/b/e;->rw:Z

    iget-object v1, p0, Lcom/miui/gamebooster/b/e;->rB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/miui/gamebooster/b/e;->rB:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/gamebooster/b/e;->rA:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/gamebooster/b/e;->rB:Ljava/util/List;

    new-instance v2, Lcom/miui/gamebooster/model/d;

    sget-object v3, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qV:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/miui/gamebooster/model/d;-><init>(Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;Landroid/content/pm/ResolveInfo;Lcom/miui/gamebooster/model/a;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/b/e;->rB:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/gamebooster/b/e;->rx:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/gamebooster/b/e;->rx:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rsub-int/lit8 v0, v0, 0x6

    sub-int v0, v3, v0

    iget-object v3, p0, Lcom/miui/gamebooster/b/e;->rx:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/b/e;->rB:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/gamebooster/b/e;->rA:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/b/e;->rB:Ljava/util/List;

    new-instance v1, Lcom/miui/gamebooster/model/d;

    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qV:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    invoke-direct {v1, v2, v4, v4, v5}, Lcom/miui/gamebooster/model/d;-><init>(Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;Landroid/content/pm/ResolveInfo;Lcom/miui/gamebooster/model/a;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/b/e;->rB:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/gamebooster/b/e;->rx:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private tp(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/d;

    invoke-static {}, Lcom/miui/gamebooster/b/e;->tr()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->mL()Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/miui/gamebooster/b/e;->rx:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/miui/gamebooster/b/e;->rA:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static synthetic tr()[I
    .locals 3

    sget-object v0, Lcom/miui/gamebooster/b/e;->rC:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/b/e;->rC:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->values()[Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qV:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qW:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qX:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qY:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qZ:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/miui/gamebooster/b/e;->rC:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/b/e;->rB:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/b/e;->rB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Lcom/miui/gamebooster/model/d;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/b/e;->rB:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/b/e;->rB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/d;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/b/e;->getItem(I)Lcom/miui/gamebooster/model/d;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/b/e;->getItem(I)Lcom/miui/gamebooster/model/d;

    move-result-object v0

    sget-object v1, Lcom/miui/gamebooster/b/e;->rv:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->getLayoutId()I

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
    .locals 10

    const/4 v5, 0x1

    const/4 v1, 0x0

    const v7, 0x7f09016c

    const/16 v9, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/b/e;->rB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->getLayoutId()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gamebooster/b/e;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez p2, :cond_0

    invoke-static {v3, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_1

    :goto_1
    return-object p2

    :pswitch_0
    new-instance v6, Lcom/miui/gamebooster/b/f;

    invoke-direct {v6}, Lcom/miui/gamebooster/b/f;-><init>()V

    const v1, 0x7f0a0205

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v6, Lcom/miui/gamebooster/b/f;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0a0204

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v6, Lcom/miui/gamebooster/b/f;->rF:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a020a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v6, Lcom/miui/gamebooster/b/f;->rE:Landroid/widget/ImageView;

    const v1, 0x7f0a0209

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v6, Lcom/miui/gamebooster/b/f;->rD:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    new-instance v6, Lcom/miui/gamebooster/b/g;

    invoke-direct {v6}, Lcom/miui/gamebooster/b/g;-><init>()V

    const v1, 0x7f0a0207

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v6, Lcom/miui/gamebooster/b/g;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0a0206

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v6, Lcom/miui/gamebooster/b/g;->rG:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    new-instance v6, Lcom/miui/gamebooster/b/h;

    invoke-direct {v6}, Lcom/miui/gamebooster/b/h;-><init>()V

    const v1, 0x7f0a0208

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v6, Lcom/miui/gamebooster/b/h;->rH:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/b/f;

    iget-object v2, v1, Lcom/miui/gamebooster/b/f;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f09015e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-boolean v6, p0, Lcom/miui/gamebooster/b/e;->ry:Z

    if-eqz v6, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, v1, Lcom/miui/gamebooster/b/f;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    invoke-static {}, Lcom/miui/gamebooster/b/e;->tr()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->mL()Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->mM()Lcom/miui/gamebooster/model/a;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/b/e;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    iget-object v2, v1, Lcom/miui/gamebooster/b/f;->rD:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/miui/gamebooster/b/f;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/a;->my()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/a;->mz()Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    move-result-object v0

    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qO:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/miui/gamebooster/a/a;->eQ()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v4}, Lcom/miui/gamebooster/c/b;->tJ(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    move v4, v5

    :cond_2
    :goto_2
    if-eqz v4, :cond_8

    iget-object v0, v1, Lcom/miui/gamebooster/b/f;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/b/e;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020121

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->mN()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Lcom/miui/common/b/f;->aHR(I)I

    move-result v2

    const/16 v5, 0x3e7

    if-ne v2, v5, :cond_4

    const-string/jumbo v2, "pkg_icon_xspace://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lcom/miui/gamebooster/b/f;->icon:Landroid/widget/ImageView;

    sget-object v6, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    iget-object v7, p0, Lcom/miui/gamebooster/b/e;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02014d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v2, v5, v6, v7}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->mO()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/gamebooster/b/e;->ry:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/miui/gamebooster/b/f;->rE:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, v1, Lcom/miui/gamebooster/b/f;->rE:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_3
    iget-object v0, v1, Lcom/miui/gamebooster/b/f;->rE:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/miui/gamebooster/b/e;->rz:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v2, v1, Lcom/miui/gamebooster/b/f;->rD:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/miui/gamebooster/b/f;->rD:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v0, v1, Lcom/miui/gamebooster/b/f;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/b/e;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v2, "pkg_icon://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lcom/miui/gamebooster/b/f;->icon:Landroid/widget/ImageView;

    sget-object v6, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    iget-object v7, p0, Lcom/miui/gamebooster/b/e;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02014d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v2, v5, v6, v7}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    iget-object v0, v1, Lcom/miui/gamebooster/b/f;->rE:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_6
    iget-object v0, v1, Lcom/miui/gamebooster/b/f;->rD:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_7
    invoke-static {v4}, Lcom/miui/gamebooster/c/b;->tK(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v5

    goto/16 :goto_2

    :cond_8
    iget-object v0, v1, Lcom/miui/gamebooster/b/f;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/b/e;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/b/g;

    iget-boolean v1, p0, Lcom/miui/gamebooster/b/e;->ry:Z

    if-eqz v1, :cond_a

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09016a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v1, p0, Lcom/miui/gamebooster/b/e;->rw:Z

    if-eqz v1, :cond_9

    iget-object v0, v0, Lcom/miui/gamebooster/b/g;->icon:Landroid/widget/ImageView;

    const v1, 0x7f020124

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, v0, Lcom/miui/gamebooster/b/g;->icon:Landroid/widget/ImageView;

    const v1, 0x7f02012c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_a
    iget-boolean v1, p0, Lcom/miui/gamebooster/b/e;->rw:Z

    if-eqz v1, :cond_b

    iget-object v0, v0, Lcom/miui/gamebooster/b/g;->icon:Landroid/widget/ImageView;

    const v1, 0x7f020125

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, v0, Lcom/miui/gamebooster/b/g;->icon:Landroid/widget/ImageView;

    const v1, 0x7f02012d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x7f0300ae
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0300ae
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/b/e;->rv:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public to(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/b/e;->rB:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/miui/gamebooster/b/e;->tm(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/b/e;->rA:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/miui/gamebooster/b/e;->tm(Ljava/util/List;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/b/e;->rw:Z

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/b/e;->tn(Z)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/b/e;->notifyDataSetChanged()V

    return-void
.end method

.method public tq()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/b/e;->rw:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/b/e;->tn(Z)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/b/e;->notifyDataSetChanged()V

    return-void
.end method
