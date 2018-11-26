.class final Lcom/miui/antivirus/activity/I;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic ato:Lcom/miui/antivirus/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/SettingsActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/I;->ato:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/util/Pair;
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/I;->ato:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v0}, Lcom/miui/antivirus/whitelist/a;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/whitelist/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antivirus/whitelist/a;->aAr()I

    move-result v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/I;->ato:Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-static {v1}, Lcom/miui/antivirus/utils/a;->aup(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antivirus/activity/I;->loadInBackground()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
