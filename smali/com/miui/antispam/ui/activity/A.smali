.class final Lcom/miui/antispam/ui/activity/A;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic Up:Lcom/miui/antispam/ui/activity/c;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/A;->Up:Lcom/miui/antispam/ui/activity/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected Vd(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/A;->Up:Lcom/miui/antispam/ui/activity/c;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/c;->Tr(Lcom/miui/antispam/ui/activity/c;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/LabelPreference;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/A;->Up:Lcom/miui/antispam/ui/activity/c;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/c;->Tr(Lcom/miui/antispam/ui/activity/c;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/A;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/A;->Up:Lcom/miui/antispam/ui/activity/c;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/c;->Tw(Lcom/miui/antispam/ui/activity/c;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/A;->Vd(Ljava/util/List;)V

    return-void
.end method
