.class Lmiui/externalassistant/SdkErrorActivity$1;
.super Ljava/lang/Object;
.source "SdkErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/externalassistant/SdkErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/externalassistant/SdkErrorActivity;


# direct methods
.method constructor <init>(Lmiui/externalassistant/SdkErrorActivity;)V
    .locals 0

    iput-object p1, p0, Lmiui/externalassistant/SdkErrorActivity$1;->this$0:Lmiui/externalassistant/SdkErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lmiui/externalassistant/SdkErrorActivity$1;->this$0:Lmiui/externalassistant/SdkErrorActivity;

    invoke-virtual {v0}, Lmiui/externalassistant/SdkErrorActivity;->finish()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
