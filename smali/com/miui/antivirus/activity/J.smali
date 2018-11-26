.class final Lcom/miui/antivirus/activity/J;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic atp:Lcom/miui/antivirus/activity/SettingsActivity;

.field final synthetic atq:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/SettingsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/J;->atp:Lcom/miui/antivirus/activity/SettingsActivity;

    iput-object p2, p0, Lcom/miui/antivirus/activity/J;->atq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/J;->atq:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/i;->aDN(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    return v0
.end method
