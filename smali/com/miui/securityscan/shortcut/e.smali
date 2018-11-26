.class final Lcom/miui/securityscan/shortcut/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Lf:Lcom/miui/securityscan/shortcut/d;

.field final synthetic Lg:Lcom/miui/securityscan/shortcut/ShortcutListItemView;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/shortcut/d;Lcom/miui/securityscan/shortcut/ShortcutListItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/shortcut/e;->Lf:Lcom/miui/securityscan/shortcut/d;

    iput-object p2, p0, Lcom/miui/securityscan/shortcut/e;->Lg:Lcom/miui/securityscan/shortcut/ShortcutListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/e;->Lg:Lcom/miui/securityscan/shortcut/ShortcutListItemView;

    invoke-virtual {v0}, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->Mm()V

    return-void
.end method
