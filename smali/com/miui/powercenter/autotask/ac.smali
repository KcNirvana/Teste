.class final Lcom/miui/powercenter/autotask/ac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic aMv:Lcom/miui/powercenter/autotask/y;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/y;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/ac;->aMv:Lcom/miui/powercenter/autotask/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/autotask/o;->aXs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/powercenter/autotask/ac;->aMv:Lcom/miui/powercenter/autotask/y;

    invoke-static {v1, v0}, Lcom/miui/powercenter/autotask/y;->aZa(Lcom/miui/powercenter/autotask/y;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const-string/jumbo v1, "auto_clean_memory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ac;->aMv:Lcom/miui/powercenter/autotask/y;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/y;->aYZ(Lcom/miui/powercenter/autotask/y;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "brightness"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ac;->aMv:Lcom/miui/powercenter/autotask/y;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/y;->aYY(Lcom/miui/powercenter/autotask/y;)V

    goto :goto_0
.end method
