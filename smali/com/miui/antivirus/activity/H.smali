.class final Lcom/miui/antivirus/activity/H;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic atn:Lcom/miui/antivirus/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/H;->atn:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected azh(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/H;->atn:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v0, p1}, Lcom/miui/antivirus/activity/SettingsActivity;->ayT(Lcom/miui/antivirus/activity/SettingsActivity;Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/activity/H;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/H;->atn:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/SettingsActivity;->ayR(Lcom/miui/antivirus/activity/SettingsActivity;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/activity/H;->azh(Ljava/util/List;)V

    return-void
.end method
