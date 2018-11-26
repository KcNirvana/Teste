.class public Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private Oq:Z

.field private Or:Lcom/miui/permcenter/autostart/a;

.field private Os:Landroid/widget/ListView;

.field private Ot:I

.field private Ou:Ljava/lang/String;

.field private Ov:I

.field private mPkgName:Ljava/lang/String;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method private Pl(IZ)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Or:Lcom/miui/permcenter/autostart/a;

    iget v1, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Ot:I

    iget-boolean v2, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Oq:Z

    invoke-virtual {v0, v1, v2}, Lcom/miui/permcenter/autostart/a;->updateData(IZ)V

    new-instance v0, Lcom/miui/permcenter/autostart/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/permcenter/autostart/m;-><init>(Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;IZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/autostart/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Ot:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    iput-boolean p2, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Oq:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private Pm()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "pkg_position"

    iget v2, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Ov:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "auto_start_detail_result_permission_action"

    iget v2, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Ot:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "auto_start_detail_result_wakepath_accepted"

    iget-boolean v2, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Oq:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private Pn()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/permcenter/autostart/l;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/autostart/l;-><init>(Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic Po(Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Oq:Z

    return v0
.end method

.method static synthetic Pp(Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;)Lcom/miui/permcenter/autostart/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Or:Lcom/miui/permcenter/autostart/a;

    return-object v0
.end method

.method static synthetic Pq(Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Ot:I

    return v0
.end method

.method static synthetic Pr(Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->mPkgName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Pm()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->finish()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/autostart/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, v0, Lcom/miui/permcenter/autostart/b;->type:I

    invoke-direct {p0, v0, p2}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Pl(IZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03012a

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "pkg_name"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->mPkgName:Ljava/lang/String;

    const-string/jumbo v1, "pkg_label"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Ou:Ljava/lang/String;

    const-string/jumbo v1, "action"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Ot:I

    const-string/jumbo v1, "pkg_position"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Ov:I

    const-string/jumbo v1, "white_list"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Oq:Z

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Ou:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Ou:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Os:Landroid/widget/ListView;

    new-instance v0, Lcom/miui/permcenter/autostart/a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/autostart/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Or:Lcom/miui/permcenter/autostart/a;

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Or:Lcom/miui/permcenter/autostart/a;

    invoke-virtual {v0, p0}, Lcom/miui/permcenter/autostart/a;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Os:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Or:Lcom/miui/permcenter/autostart/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Os:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Pn()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/autostart/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/miui/permcenter/autostart/b;->NZ:Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget v2, v0, Lcom/miui/permcenter/autostart/b;->type:I

    invoke-direct {p0, v2, v1}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Pl(IZ)V

    iget-object v0, v0, Lcom/miui/permcenter/autostart/b;->NZ:Landroid/widget/Checkable;

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Pm()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
