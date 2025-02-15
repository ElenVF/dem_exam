<?php

namespace app\modules\admin\controllers;

use app\models\Application;
use app\models\ApplicationSearch;
use Codeception\Lib\Connector\Yii2;
use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * ApplicationController implements the CRUD actions for Application model.
 */
class DefaultController extends Controller
{
    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
            ]
        );
    }

    /**
     * Lists all Application models.
     *
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new ApplicationSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Application model.
     * @param int $id ID
     * @return string
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Application model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $model = new Application();

        if ($this->request->isPost) {
            if ($model->load($this->request->post()) ) {
                $model->date_str=Yii::$app->formatter->asDate($model->date_str,'php:Y-m-d H:i:s');
                if($model->save()){
                return $this->redirect(['view', 'id' => $model->id]);
            }}
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Application model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $id ID
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }


    public function actionLoad($id)
    {
        $model = $this->findModel($id);
if($model->status_id!=1)return $this->goHome();
        if ($this->request->isPost)  {
            $model->status_id=2;
            if($model->save()){
                Yii::$app->session->setFlash('success','вы успешно изменили статус');
            return $this->redirect(['view', 'id' => $model->id]);
        }
    }
   
       
    }
    public function actionConfirm($id)
    {
        $model = $this->findModel($id);
if($model->status_id!=2)return $this->goHome();
        if ($this->request->isPost)  {
            $model->status_id=3;
            if($model->save()){
                Yii::$app->session->setFlash('success','вы успешно изменили статус');
            return $this->redirect(['view','id' => $model->id]);
        }
    }
}
public function actionReject($id)
{
    $model = $this->findModel($id);
if($model->status_id!=2)return $this->goHome();
    if ($this->request->isPost)  {
        $model->status_id=4;
        if($model->save()){
            Yii::$app->session->setFlash('success','вы успешно изменили статус');
        return $this->redirect(['view', 'id' => $model->id]);
    }
}
}

    /**
     * Deletes an existing Application model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $id ID
     * @return \yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Application model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $id ID
     * @return Application the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Application::findOne(['id' => $id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

    public function actions()
    {
       if(Yii::$app->user->isGuest || !Yii::$app->user->identity->isAdmin) $this->goHome();
    }
   
}
