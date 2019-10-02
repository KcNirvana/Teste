.class public abstract Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;
.super Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;
.source "BaseGalleryFragment.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract attachGalleryState(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;)V
.end method

.method protected final finish()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method public abstract getGalleryState()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;
.end method

.method protected final getResult()Landroid/content/Intent;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->getGalleryResult()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final hideNavigationBar()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1107

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_0

    const/16 v1, 0x3107

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/base/utils/AndroidUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method abstract lossVideoFocus()V
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->lossVideoFocus()V

    :cond_0
    :goto_0
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract onBackPressed()Z
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->hashCode()I

    move-result p1

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->onCreate(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->onDestroy(I)V

    return-void
.end method

.method public abstract onMultiWindowModeChanged(Z)V
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->onPause()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->requestAudioFocus(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->onResume()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->requestAudioFocus(Z)V

    return-void
.end method

.method protected final postAsyncTask(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->hashCode()I

    move-result v0

    invoke-static {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->postAsyncTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method protected final postAsyncTask(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->hashCode()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->postAsyncTask(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method protected final postAsyncTaskDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->hashCode()I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->postAsyncTaskDelayed(ILjava/lang/Runnable;J)V

    return-void
.end method

.method protected final postAsyncTaskDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->hashCode()I

    move-result v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->postAsyncTaskDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    return-void
.end method

.method protected final registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected final removeAsyncTask(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->hashCode()I

    move-result v0

    invoke-static {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->removeAsyncTask(ILjava/lang/Object;)V

    return-void
.end method

.method protected final removeAsyncTask(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->hashCode()I

    move-result v0

    invoke-static {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/GalleryLifeCycle;->removeAsyncTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method protected requestAudioFocus(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->mAudioManager:Landroid/media/AudioManager;

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, p0, v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :goto_0
    return-void
.end method

.method protected final requestOrientation(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected final sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected final setResult(ILandroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->setGalleryResult(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected final showFragment(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->showFragment(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;)V

    :cond_0
    return-void
.end method

.method protected final showNavigationBar()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->showNavigationBar(Z)V

    return-void
.end method

.method protected final showNavigationBar(Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    if-nez p1, :cond_0

    const/16 v1, 0x704

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_1

    or-int/lit16 v1, v1, 0x2000

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/base/utils/AndroidUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected final unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseGalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
