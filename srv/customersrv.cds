using {first_project.db as datamodels} from '../db/data-model';
service CutomerDetailsService {

    entity Customers as projection on datamodels.Customers ;

}