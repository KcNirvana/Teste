.class final Lcom/miui/permcenter/root/f;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic OV:Lcom/miui/permcenter/root/RootManagementActivity;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/root/RootManagementActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/root/f;->OV:Lcom/miui/permcenter/root/RootManagementActivity;

    iput-object p2, p0, Lcom/miui/permcenter/root/f;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/root/f;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/miui/permcenter/root/f;->OV:Lcom/miui/permcenter/root/RootManagementActivity;

    invoke-static {v0}, Lcom/miui/permission/a;->getInstance(Landroid/content/Context;)Lcom/miui/permission/a;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/permcenter/root/f;->val$packageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-wide/16 v2, 0x200

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/miui/permission/a;->bBL(JI[Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
