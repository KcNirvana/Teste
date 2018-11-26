.class Lcom/miui/applicationlock/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private aes:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

.field final synthetic aet:Lcom/miui/applicationlock/ConfirmAccountActivity;


# direct methods
.method private constructor <init>(Lcom/miui/applicationlock/ConfirmAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/a;->aet:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/applicationlock/ConfirmAccountActivity;Lcom/miui/applicationlock/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/a;-><init>(Lcom/miui/applicationlock/ConfirmAccountActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {p2}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/a;->aes:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    iget-object v0, p0, Lcom/miui/applicationlock/a;->aet:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->akq(Lcom/miui/applicationlock/ConfirmAccountActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/a;->aet:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-virtual {v1}, Lcom/miui/applicationlock/ConfirmAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/applicationlock/a;->aet:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->akp(Lcom/miui/applicationlock/ConfirmAccountActivity;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/a;->aes:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    iget-object v1, p0, Lcom/miui/applicationlock/a;->aet:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccountActivity;->akp(Lcom/miui/applicationlock/ConfirmAccountActivity;)Landroid/accounts/Account;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;->getAvatarFd(Landroid/accounts/Account;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_1
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/miui/applicationlock/utils/m;->afs(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/a;->aet:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccountActivity;->akq(Lcom/miui/applicationlock/ConfirmAccountActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v6

    :goto_0
    iget-object v1, p0, Lcom/miui/applicationlock/a;->aet:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-virtual {v1, p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v7, p0, Lcom/miui/applicationlock/a;->aes:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ConfirmAccountActivity"

    const-string/jumbo v2, "ParcelFileDescriptor close exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v6, v7

    :goto_2
    :try_start_3
    const-string/jumbo v1, "ConfirmAccountActivity"

    const-string/jumbo v2, "Fail getAvatarFd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/miui/applicationlock/a;->aet:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-virtual {v0, p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v7, p0, Lcom/miui/applicationlock/a;->aes:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    if-eqz v6, :cond_0

    :try_start_4
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "ConfirmAccountActivity"

    const-string/jumbo v2, "ParcelFileDescriptor close exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, v7

    :goto_3
    iget-object v1, p0, Lcom/miui/applicationlock/a;->aet:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-virtual {v1, p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v7, p0, Lcom/miui/applicationlock/a;->aes:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    if-eqz v6, :cond_1

    :try_start_5
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    const-string/jumbo v2, "ConfirmAccountActivity"

    const-string/jumbo v3, "ParcelFileDescriptor close exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v0, v6

    goto :goto_0

    :cond_3
    move-object v0, v7

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
