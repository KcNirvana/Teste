.class Lcom/miui/securityscan/shortcut/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field KW:Z

.field KX:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/shortcut/c;->KX:Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;

    invoke-static {p2, p1}, Lcom/miui/securityscan/shortcut/a;->Mc(Landroid/content/Context;Lcom/miui/securityscan/shortcut/ShortcutHelper$Shortcut;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/securityscan/shortcut/c;->KW:Z

    return-void
.end method
