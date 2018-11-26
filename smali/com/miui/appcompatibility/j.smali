.class final Lcom/miui/appcompatibility/j;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic baH:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appcompatibility/j;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/appcompatibility/j;->val$packageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/appcompatibility/j;->baH:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bxn(Lcom/miui/appcompatibility/d;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/appcompatibility/j;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/appcompatibility/j;->val$packageName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/appcompatibility/j;->baH:Z

    invoke-static {v0, v1, v2, p1}, Lcom/miui/appcompatibility/c;->bwQ(Landroid/content/Context;Ljava/lang/String;ZLcom/miui/appcompatibility/d;)V

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/appcompatibility/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/appcompatibility/j;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appcompatibility/c;->bwR(Landroid/content/Context;)Lcom/miui/appcompatibility/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appcompatibility/j;->doInBackground([Ljava/lang/Void;)Lcom/miui/appcompatibility/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/appcompatibility/d;

    invoke-virtual {p0, p1}, Lcom/miui/appcompatibility/j;->bxn(Lcom/miui/appcompatibility/d;)V

    return-void
.end method
