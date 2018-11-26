.class final Lcom/miui/appmanager/ab;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aWG:Lcom/miui/appmanager/AMAppStorageDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/ab;->aWG:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/ab;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ab;->aWG:Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blJ(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V

    const/4 v0, 0x0

    return-object v0
.end method
