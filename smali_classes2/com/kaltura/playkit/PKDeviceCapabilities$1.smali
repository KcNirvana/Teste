.class final Lcom/kaltura/playkit/PKDeviceCapabilities$1;
.super Ljava/lang/Object;
.source "PKDeviceCapabilities.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/PKDeviceCapabilities;->maybeSendReport(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/PKDeviceCapabilities$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kaltura/playkit/PKDeviceCapabilities$1;->val$sharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/PKDeviceCapabilities$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaltura/playkit/PKDeviceCapabilities$1;->val$sharedPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/PKDeviceCapabilities;->access$000(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-void
.end method
