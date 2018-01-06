.class public Lcom/miui/weather2/ActivityAlertDetail;
.super Lcom/miui/weather2/be;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/ActivityAlertDetail$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Ljava/lang/String;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/Alert;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/weather2/be;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/ActivityAlertDetail;->g:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/weather2/WeatherApplication;->b()Lcom/miui/weather2/WeatherApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivityAlertDetail;->h:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityAlertDetail;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityAlertDetail;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityAlertDetail;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v2, 0x7f030000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityAlertDetail;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/weather2/a;

    invoke-direct {v1, p0}, Lcom/miui/weather2/a;-><init>(Lcom/miui/weather2/ActivityAlertDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/miui/weather2/ActivityAlertDetail;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityAlertDetail;->h:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private b()V
    .locals 2

    const v0, 0x7f0f0004

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityAlertDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityAlertDetail;->a:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/miui/weather2/ActivityAlertDetail;->a:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityAlertDetail;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/miui/weather2/ActivityAlertDetail$a;

    invoke-direct {v1, p0}, Lcom/miui/weather2/ActivityAlertDetail$a;-><init>(Lcom/miui/weather2/ActivityAlertDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    invoke-super {p0}, Lcom/miui/weather2/be;->onBackPressed()V

    const-string v0, "sign_out"

    const-string v1, "alert_detail"

    const-string v2, "click_back"

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityAlertDetail;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/weather2/be;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityAlertDetail;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityAlertDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "city_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/ActivityAlertDetail;->b:Ljava/lang/String;

    const-string v1, "intent_key_alertdata"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivityAlertDetail;->g:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/weather2/ActivityAlertDetail;->b()V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityAlertDetail;->a()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Lcom/miui/weather2/be;->onStop()V

    const-string v0, "sign_out"

    const-string v1, "alert_detail"

    const-string v2, "sign_out"

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
