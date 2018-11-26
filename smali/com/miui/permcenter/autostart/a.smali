.class public Lcom/miui/permcenter/autostart/a;
.super Landroid/widget/BaseAdapter;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private NW:Z

.field private NX:I

.field private NY:I

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/permcenter/autostart/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/permcenter/autostart/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/autostart/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/autostart/a;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private OS(I)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030135

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a0364

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    new-instance v3, Lcom/miui/permcenter/autostart/b;

    invoke-direct {v3}, Lcom/miui/permcenter/autostart/b;-><init>()V

    iput p1, v3, Lcom/miui/permcenter/autostart/b;->type:I

    const v0, 0x7f0a0365

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, v3, Lcom/miui/permcenter/autostart/b;->NZ:Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    packed-switch p1, :pswitch_data_1

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/miui/permcenter/autostart/a;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v3}, Lmiui/widget/SlidingButton;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2

    :pswitch_0
    const v1, 0x7f07068f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    const v1, 0x7f07068d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/miui/permcenter/autostart/a;->NW:Z

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_1

    :pswitch_3
    iget v1, p0, Lcom/miui/permcenter/autostart/a;->NY:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private OT(I)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030136

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a00f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/permcenter/autostart/a;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/permcenter/autostart/a;->NX:I

    iget v0, p0, Lcom/miui/permcenter/autostart/a;->NX:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const v0, 0x7f07068c

    invoke-direct {p0, v0}, Lcom/miui/permcenter/autostart/a;->OT(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-ne p1, v0, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/permcenter/autostart/a;->OS(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    const v0, 0x7f07068e

    invoke-direct {p0, v0}, Lcom/miui/permcenter/autostart/a;->OT(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/permcenter/autostart/a;->OS(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/autostart/a;->NX:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/autostart/a;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public updateData(IZ)V
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/autostart/a;->NY:I

    iput-boolean p2, p0, Lcom/miui/permcenter/autostart/a;->NW:Z

    return-void
.end method
