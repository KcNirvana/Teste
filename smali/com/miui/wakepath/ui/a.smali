.class final Lcom/miui/wakepath/ui/a;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic bee:Lcom/miui/wakepath/ui/ConfirmStartActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/wakepath/ui/ConfirmStartActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/wakepath/ui/a;->bee:Lcom/miui/wakepath/ui/ConfirmStartActivity;

    iput-object p2, p0, Lcom/miui/wakepath/ui/a;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/wakepath/ui/a;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/miui/wakepath/ui/a;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/wakepath/ui/a;->bee:Lcom/miui/wakepath/ui/ConfirmStartActivity;

    invoke-static {v1}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->bBG(Lcom/miui/wakepath/ui/ConfirmStartActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/wakepath/ui/a;->bee:Lcom/miui/wakepath/ui/ConfirmStartActivity;

    invoke-static {v2}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->bBF(Lcom/miui/wakepath/ui/ConfirmStartActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/permcenter/g;->SW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
