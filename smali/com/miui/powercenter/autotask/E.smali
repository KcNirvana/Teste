.class final Lcom/miui/powercenter/autotask/E;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic aLQ:Lcom/miui/powercenter/autotask/k;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/E;->aLQ:Lcom/miui/powercenter/autotask/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    const-string/jumbo v0, "key_repeat_type"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Lcom/miui/powercenter/bootshutdown/b;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/E;->aLQ:Lcom/miui/powercenter/autotask/k;

    iget-object v0, v0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {p2}, Lcom/miui/powercenter/bootshutdown/b;->aSE()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYk(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
