.class final Lcom/miui/powercenter/e;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field final synthetic aPo:Lcom/miui/powercenter/PowerSettings;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/PowerSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/e;->aPo:Lcom/miui/powercenter/PowerSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/e;->aPo:Lcom/miui/powercenter/PowerSettings;

    invoke-static {v0}, Lcom/miui/powercenter/PowerSettings;->beC(Lcom/miui/powercenter/PowerSettings;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/e;->aPo:Lcom/miui/powercenter/PowerSettings;

    iget-object v2, p0, Lcom/miui/powercenter/e;->aPo:Lcom/miui/powercenter/PowerSettings;

    invoke-static {v2}, Lcom/miui/powercenter/PowerSettings;->beE(Lcom/miui/powercenter/PowerSettings;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/powercenter/PowerSettings;->beF(Lcom/miui/powercenter/PowerSettings;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
