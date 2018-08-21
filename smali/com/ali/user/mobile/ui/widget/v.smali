.class public Lcom/ali/user/mobile/ui/widget/v;
.super Ljava/lang/Object;
.source "APViewEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/ui/widget/v$a;
    }
.end annotation


# static fields
.field private static a:Lcom/ali/user/mobile/ui/widget/v$a;


# direct methods
.method public static a(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/ui/widget/v;->a:Lcom/ali/user/mobile/ui/widget/v$a;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lcom/ali/user/mobile/ui/widget/v;->a:Lcom/ali/user/mobile/ui/widget/v$a;

    invoke-interface {v0, p0}, Lcom/ali/user/mobile/ui/widget/v$a;->a(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/ui/widget/v;->a:Lcom/ali/user/mobile/ui/widget/v$a;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lcom/ali/user/mobile/ui/widget/v;->a:Lcom/ali/user/mobile/ui/widget/v$a;

    invoke-interface {v0, p0}, Lcom/ali/user/mobile/ui/widget/v$a;->a(Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p0

    goto :goto_0
.end method
