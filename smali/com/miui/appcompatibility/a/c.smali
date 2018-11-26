.class final Lcom/miui/appcompatibility/a/c;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic bag:Lcom/miui/appcompatibility/a/a;

.field final synthetic bah:Ljava/lang/String;

.field final synthetic bai:Ljava/lang/String;

.field final synthetic baj:I

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/appcompatibility/a/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appcompatibility/a/c;->bag:Lcom/miui/appcompatibility/a/a;

    iput-object p2, p0, Lcom/miui/appcompatibility/a/c;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/appcompatibility/a/c;->bah:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/appcompatibility/a/c;->bai:Ljava/lang/String;

    iput p5, p0, Lcom/miui/appcompatibility/a/c;->baj:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appcompatibility/a/c;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    iget-object v0, p0, Lcom/miui/appcompatibility/a/c;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appcompatibility/b;->getInstance(Landroid/content/Context;)Lcom/miui/appcompatibility/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appcompatibility/a/c;->bah:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/appcompatibility/a/c;->bai:Ljava/lang/String;

    iget v3, p0, Lcom/miui/appcompatibility/a/c;->baj:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/appcompatibility/b;->bwk(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    return-object v0
.end method
