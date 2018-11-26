.class final Lcom/miui/antispam/ui/b/k;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic Xm:Lcom/miui/antispam/ui/b/b;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/b/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/b/k;->Xm:Lcom/miui/antispam/ui/b/b;

    iput-object p2, p0, Lcom/miui/antispam/ui/b/k;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/b/k;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/k;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antispam/util/h;->XO(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method
