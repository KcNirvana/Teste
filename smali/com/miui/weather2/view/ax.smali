.class Lcom/miui/weather2/view/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/structures/InfoDataBean;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Landroid/widget/ImageView;

.field final synthetic e:Landroid/widget/ImageView;

.field final synthetic f:Landroid/widget/ImageView;

.field final synthetic g:Landroid/widget/TextView;

.field final synthetic h:Landroid/widget/TextView;

.field final synthetic i:Landroid/widget/TextView;

.field final synthetic j:Landroid/widget/TextView;

.field final synthetic k:Landroid/widget/LinearLayout;

.field final synthetic l:I

.field final synthetic m:Landroid/widget/LinearLayout;

.field final synthetic n:Landroid/widget/TextView;

.field final synthetic o:I

.field final synthetic p:I

.field final synthetic q:Landroid/widget/TextView;

.field final synthetic r:Lcom/miui/weather2/view/WeatherScrollView;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/WeatherScrollView;Lcom/miui/weather2/structures/InfoDataBean;Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;ILandroid/widget/LinearLayout;Landroid/widget/TextView;IILandroid/widget/TextView;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/weather2/view/ax;->r:Lcom/miui/weather2/view/WeatherScrollView;

    iput-object p2, p0, Lcom/miui/weather2/view/ax;->a:Lcom/miui/weather2/structures/InfoDataBean;

    iput-object p3, p0, Lcom/miui/weather2/view/ax;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/miui/weather2/view/ax;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/miui/weather2/view/ax;->d:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/miui/weather2/view/ax;->e:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/miui/weather2/view/ax;->f:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/miui/weather2/view/ax;->g:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/miui/weather2/view/ax;->h:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/miui/weather2/view/ax;->i:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/miui/weather2/view/ax;->j:Landroid/widget/TextView;

    iput-object p12, p0, Lcom/miui/weather2/view/ax;->k:Landroid/widget/LinearLayout;

    iput p13, p0, Lcom/miui/weather2/view/ax;->l:I

    iput-object p14, p0, Lcom/miui/weather2/view/ax;->m:Landroid/widget/LinearLayout;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/miui/weather2/view/ax;->n:Landroid/widget/TextView;

    move/from16 v0, p16

    iput v0, p0, Lcom/miui/weather2/view/ax;->o:I

    move/from16 v0, p17

    iput v0, p0, Lcom/miui/weather2/view/ax;->p:I

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/miui/weather2/view/ax;->q:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/ax;->a:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrVoteOption()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/ax;->b:Landroid/content/Context;

    const v1, 0x7f090020

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Lcom/miui/weather2/view/ay;

    invoke-direct {v1, p0, v0}, Lcom/miui/weather2/view/ay;-><init>(Lcom/miui/weather2/view/ax;I)V

    sget-object v0, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/miui/weather2/view/ay;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
