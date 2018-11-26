.class public Lcom/miui/permcenter/autostart/AutoStartManagementActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private Oc:I

.field private Od:Landroid/view/View;

.field private Oe:Lcom/miui/permcenter/autostart/c;

.field private Of:Landroid/view/MenuItem;

.field private Og:Lcom/miui/permcenter/autostart/f;

.field private Oh:Z

.field private Oi:Landroid/view/MenuItem;

.field private Oj:Ljava/util/List;

.field private mEmptyView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIsRunning:Z

.field private mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oc:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private OU(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/permcenter/autostart/e;

    invoke-direct {v1}, Lcom/miui/permcenter/autostart/e;-><init>()V

    sget-object v2, Lcom/miui/permcenter/autostart/HeaderType;->NU:Lcom/miui/permcenter/autostart/HeaderType;

    invoke-virtual {v1, v2}, Lcom/miui/permcenter/autostart/e;->Pf(Lcom/miui/permcenter/autostart/HeaderType;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f0c0032

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/permcenter/autostart/e;->setHeaderTitle(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/miui/permcenter/autostart/e;->Pg(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/permcenter/autostart/e;

    invoke-direct {v1}, Lcom/miui/permcenter/autostart/e;-><init>()V

    sget-object v2, Lcom/miui/permcenter/autostart/HeaderType;->NT:Lcom/miui/permcenter/autostart/HeaderType;

    invoke-virtual {v1, v2}, Lcom/miui/permcenter/autostart/e;->Pf(Lcom/miui/permcenter/autostart/HeaderType;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f0c0033

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/permcenter/autostart/e;->setHeaderTitle(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/miui/permcenter/autostart/e;->Pg(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private OW(Z)V
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Lcom/miui/permcenter/h;->SX()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/permcenter/h;->SY(Z)V

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070661

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070662

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705d4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method private OX(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oe:Lcom/miui/permcenter/autostart/c;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->OY()V

    :cond_0
    iget-object v1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Og:Lcom/miui/permcenter/autostart/f;

    iget-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oh:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oe:Lcom/miui/permcenter/autostart/c;

    iget-object v0, v0, Lcom/miui/permcenter/autostart/c;->Ob:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/permcenter/autostart/f;->updateData(Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oe:Lcom/miui/permcenter/autostart/c;

    iget-object v0, v0, Lcom/miui/permcenter/autostart/c;->Oa:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private OY()V
    .locals 11

    const/4 v10, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oe:Lcom/miui/permcenter/autostart/c;

    iget-object v0, v0, Lcom/miui/permcenter/autostart/c;->Ob:Ljava/util/ArrayList;

    move-object v2, v0

    :goto_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v3

    move v4, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/autostart/e;

    invoke-virtual {v0}, Lcom/miui/permcenter/autostart/e;->Ph()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v4

    move v4, v1

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v1

    const-wide/16 v8, 0x4000

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v8, 0x3

    if-eq v1, v8, :cond_0

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->Sv()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oe:Lcom/miui/permcenter/autostart/c;

    iget-object v0, v0, Lcom/miui/permcenter/autostart/c;->Oa:Ljava/util/ArrayList;

    move-object v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v1, v4

    move v4, v5

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/autostart/e;

    invoke-virtual {v0}, Lcom/miui/permcenter/autostart/e;->Pi()Lcom/miui/permcenter/autostart/HeaderType;

    move-result-object v5

    sget-object v6, Lcom/miui/permcenter/autostart/HeaderType;->NU:Lcom/miui/permcenter/autostart/HeaderType;

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const v7, 0x7f0c0032

    invoke-virtual {v5, v7, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/permcenter/autostart/e;->setHeaderTitle(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const v7, 0x7f0c0033

    invoke-virtual {v5, v7, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/permcenter/autostart/e;->setHeaderTitle(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    return-void
.end method

.method private OZ()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Of:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oi:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Of:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oi:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method static synthetic Pa(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic Pb(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oj:Ljava/util/List;

    return-object v0
.end method

.method static synthetic Pc(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oj:Ljava/util/List;

    return-object p1
.end method

.method static synthetic Pd(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->OU(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public OV(Landroid/content/Loader;Lcom/miui/permcenter/autostart/c;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iget-object v1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->aGI(Landroid/view/View;)V

    iput-object p2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oe:Lcom/miui/permcenter/autostart/c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->OX(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    if-ne p1, v1, :cond_7

    if-ne p2, v3, :cond_7

    if-nez p3, :cond_0

    iput v3, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oc:I

    iput-object v4, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Od:Landroid/view/View;

    return-void

    :cond_0
    const-string/jumbo v0, "pkg_position"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_1

    iget v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oc:I

    if-ne v2, v3, :cond_2

    :cond_1
    iput v3, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oc:I

    iput-object v4, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Od:Landroid/view/View;

    return-void

    :cond_2
    iget v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oc:I

    if-ne v0, v2, :cond_1

    iput v3, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oc:I

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Od:Landroid/view/View;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Od:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/autostart/g;

    if-nez v0, :cond_4

    iput-object v4, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Od:Landroid/view/View;

    return-void

    :cond_4
    iput-object v4, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Od:Landroid/view/View;

    const-string/jumbo v2, "auto_start_detail_result_permission_action"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v2, "auto_start_detail_result_wakepath_accepted"

    const/4 v4, 0x0

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    move v1, v2

    :cond_5
    iget-object v4, v0, Lcom/miui/permcenter/autostart/g;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v4, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, v0, Lcom/miui/permcenter/autostart/g;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/c;

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {v0}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v1

    const-wide/16 v4, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/c;->SB(Ljava/util/HashMap;)V

    invoke-virtual {v0, v2}, Lcom/miui/permcenter/c;->Sz(Z)V

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/permcenter/g;->SU(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oj:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->OY()V

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Og:Lcom/miui/permcenter/autostart/f;

    invoke-virtual {v0}, Lcom/miui/permcenter/autostart/f;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v1

    if-eqz p2, :cond_1

    const/4 v2, 0x3

    :goto_0
    const-wide/16 v4, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lcom/miui/permcenter/c;->Sz(Z)V

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->OY()V

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    invoke-virtual {v0}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->getListView()Lcom/miui/common/expandableview/PinnedHeaderListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->getChildCount()I

    move-result v4

    move v0, v6

    :goto_1
    if-ge v0, v4, :cond_2

    iget-object v5, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Og:Lcom/miui/permcenter/autostart/f;

    invoke-virtual {v1, v0}, Lcom/miui/common/expandableview/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/miui/permcenter/autostart/f;->updateHeader(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->aGD()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Og:Lcom/miui/permcenter/autostart/f;

    invoke-virtual {v4, v0}, Lcom/miui/permcenter/autostart/f;->updateHeader(Landroid/view/View;)V

    :cond_3
    invoke-virtual {v1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->invalidate()V

    new-instance v0, Lcom/miui/permcenter/autostart/j;

    move-object v1, p0

    move v4, p2

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/permcenter/autostart/j;-><init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;ILjava/lang/String;ZZ)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/autostart/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03012b

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->setContentView(I)V

    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->mEmptyView:Landroid/view/View;

    new-instance v0, Lcom/miui/permcenter/autostart/f;

    const-wide/16 v2, 0x4000

    invoke-direct {v0, p0, v2, v3}, Lcom/miui/permcenter/autostart/f;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Og:Lcom/miui/permcenter/autostart/f;

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Og:Lcom/miui/permcenter/autostart/f;

    invoke-virtual {v0, p0}, Lcom/miui/permcenter/autostart/f;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iget-object v1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Og:Lcom/miui/permcenter/autostart/f;

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->aGJ(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-direct {p0, v4}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->OW(Z)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "ShowSystemApp"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oh:Z

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    new-instance v0, Lcom/miui/permcenter/autostart/i;

    invoke-direct {v0, p0, p0}, Lcom/miui/permcenter/autostart/i;-><init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0430

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oi:Landroid/view/MenuItem;

    const v0, 0x7f0a0431

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Of:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->OZ()V

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9

    const/4 v8, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oc:I

    if-ne p3, v0, :cond_1

    return-void

    :cond_1
    iput p3, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oc:I

    iput-object p2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Od:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Og:Lcom/miui/permcenter/autostart/f;

    invoke-virtual {v0, p3}, Lcom/miui/permcenter/autostart/f;->isSectionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/autostart/g;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, v0, Lcom/miui/permcenter/autostart/g;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/c;

    if-eqz v0, :cond_5

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pkg_label"

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->Su()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "pkg_name"

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "action"

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v1

    const-wide/16 v6, 0x4000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "pkg_position"

    iget v4, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oc:I

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oj:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    const-string/jumbo v0, "white_list"

    invoke-virtual {v3, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-class v0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5
    return-void

    :cond_6
    const-string/jumbo v1, "white_list"

    iget-object v4, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oj:Ljava/util/List;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/miui/permcenter/autostart/c;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->OV(Landroid/content/Loader;Lcom/miui/permcenter/autostart/c;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oe:Lcom/miui/permcenter/autostart/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oh:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oh:Z

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->OZ()V

    invoke-direct {p0, v2}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->OX(Z)V

    :cond_0
    return v2

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "AUTO_START_MNG_INFO_CLICKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, v2}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->OW(Z)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0430
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->mIsRunning:Z

    invoke-super {p0}, Lcom/miui/common/a/d;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->mIsRunning:Z

    invoke-super {p0}, Lcom/miui/common/a/d;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "ShowSystemApp"

    iget-boolean v1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->Oh:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
