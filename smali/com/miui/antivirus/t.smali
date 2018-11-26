.class final Lcom/miui/antivirus/t;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic awO:Lcom/miui/antivirus/j;

.field final synthetic awP:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/j;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/t;->awO:Lcom/miui/antivirus/j;

    iput-object p2, p0, Lcom/miui/antivirus/t;->awP:Lorg/json/JSONObject;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/t;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/t;->awO:Lcom/miui/antivirus/j;

    iget-object v1, p0, Lcom/miui/antivirus/t;->awP:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/miui/antivirus/j;->aEh(Lcom/miui/antivirus/j;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    return-object v0
.end method
