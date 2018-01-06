.class public Lcom/miui/weather2/view/l;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/miui/weather2/structures/CityData;

.field private b:[Landroid/widget/ImageView;

.field private c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/l;->c:Ljava/lang/Integer;

    return-void
.end method

.method private a()V
    .locals 7

    const-wide/32 v4, 0xea60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/l;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/weather2/tools/bi;->l(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/miui/weather2/view/l;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900a7

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bh;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/miui/weather2/view/l;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/weather2/view/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090061

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bh;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    sub-long v0, v4, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/l;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/weather2/view/l;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080004

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/weather2/tools/bh;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/weather2/f/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/c/d;->a(Ljava/lang/String;)Lcom/miui/weather2/c/d;

    move-result-object v6

    new-instance v0, Lcom/miui/weather2/model/ai;

    invoke-virtual {p0}, Lcom/miui/weather2/view/l;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/l;->a:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/CityData;->getLatitude()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/view/l;->a:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/CityData;->getLongitude()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/weather2/view/l;->a:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v4}, Lcom/miui/weather2/structures/CityData;->getExtra()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/weather2/view/l;->c:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/miui/weather2/model/ai;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/miui/weather2/view/m;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/m;-><init>(Lcom/miui/weather2/view/l;)V

    invoke-virtual {v6, v0, v1}, Lcom/miui/weather2/c/d;->a(Lcom/miui/weather2/model/ai;Lretrofit/Callback;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v2, 0x0

    const v0, 0x7f0f00a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0f00a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v0, v4, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/l;->b:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/weather2/view/l;->b:[Landroid/widget/ImageView;

    const v0, 0x7f0f009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/miui/weather2/view/l;->b:[Landroid/widget/ImageView;

    const/4 v3, 0x1

    const v0, 0x7f0f009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/miui/weather2/view/l;->b:[Landroid/widget/ImageView;

    const/4 v3, 0x2

    const v0, 0x7f0f00a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/miui/weather2/view/l;->b:[Landroid/widget/ImageView;

    const/4 v3, 0x3

    const v0, 0x7f0f00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/miui/weather2/view/l;->b:[Landroid/widget/ImageView;

    const/4 v3, 0x4

    const v0, 0x7f0f00a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/miui/weather2/view/l;->b:[Landroid/widget/ImageView;

    const/4 v3, 0x5

    const v0, 0x7f0f00a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/view/l;->b:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/weather2/view/l;->b:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v0, 0x6

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/l;->b:[Landroid/widget/ImageView;

    aget-object v3, v0, v2

    iget-object v0, p0, Lcom/miui/weather2/view/l;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/miui/weather2/structures/CityData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/l;->a:Lcom/miui/weather2/structures/CityData;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/miui/weather2/view/l;->c:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/miui/weather2/view/l;->b()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/weather2/view/l;->dismiss()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/miui/weather2/view/l;->a()V

    const-string v0, "feedback_detail"

    const-string v1, "status"

    const-string v2, "sent"

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0f009e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030020

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/l;->a(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    const-string v0, "feedback_detail"

    const-string v1, "status"

    const-string v2, "cancel"

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    invoke-virtual {p0}, Lcom/miui/weather2/view/l;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/l;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/l;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
